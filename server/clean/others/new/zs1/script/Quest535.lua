function NPC_QUEST_387(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> 퀘스트 4 완료되었을 때
				return 1,0,""..name.."~! 네 덕분에 국기 판매를 재개 할 수 있게 되었어~! 고마워!" --> 퀘스트 완료

		elseif GetSwitchCount(cnum, 485) > 0 then --> 퀘스트 3 완료되었을 때
			if GetSwitchCount(cnum, 486) > 0 then --> 퀘스트 4 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 500개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",17,"응",18,"아니" --> 퀘스트 4 시작 권유
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> 퀘스트 2 완료되었을 때
			if GetSwitchCount(cnum, 484) > 0 then --> 퀘스트 3 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 250개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",15,"응",16,"아니" --> 퀘스트 3 시작 권유
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> 퀘스트 1 완료되었을 때
			if GetSwitchCount(cnum, 482) > 0 then --> 퀘스트 2 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 100개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				else
					return 0
				end

			else
				return 3,0,"다시 왔구나? 국기를 한번더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",13,"응",14,"아니" --> 퀘스트 2 시작 권유
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> 퀘스트 1 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 10개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 100개를 모아왔어?",21,"응",22,"아니"
				else
					return 0
				end

			else
				return 3,0,"월드컵 기념 이벤트! 자~자~참여해봐~!",11,"응",12,"아니" --> 퀘스트 1 시작 권유
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 관련
	elseif req == 11 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",111,"응",112,"아니"

	elseif req == 12 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> 퀘스트 1 시작 스위치
		StartQuest(cnum, 176) --> 퀘스트 1 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 100개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 100개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 10개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 100개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 100개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 100개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 100개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 100개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 100개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 100개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 100개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 100개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 100개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 100개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 100개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 100개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 100개를 모아서 돌아오면돼!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 2칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 10개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 10개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 2 관련
	elseif req == 13 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",113,"응",114,"아니"

	elseif req == 14 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> 퀘스트 2 시작 스위치
		StartQuest(cnum, 177) --> 퀘스트 2 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 100개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 1000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"어서 카메룬 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 3 관련
	elseif req == 15 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",115,"응",116,"아니"

	elseif req == 16 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> 퀘스트 3 시작 스위치
		StartQuest(cnum, 178) --> 퀘스트 3 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 250개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 2500개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 250개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 250개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 4 관련
	elseif req == 17 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",117,"응",118,"아니"

	elseif req == 18 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> 퀘스트 4 시작 스위치
		StartQuest(cnum, 179) --> 퀘스트 4 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 500개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 5000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

	end
end

function NPC_QUEST_388(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> 퀘스트 4 완료되었을 때
				return 1,0,""..name.."~! 네 덕분에 국기 판매를 재개 할 수 있게 되었어~! 고마워!" --> 퀘스트 완료

		elseif GetSwitchCount(cnum, 485) > 0 then --> 퀘스트 3 완료되었을 때
			if GetSwitchCount(cnum, 486) > 0 then --> 퀘스트 4 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 500개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",17,"응",18,"아니" --> 퀘스트 4 시작 권유
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> 퀘스트 2 완료되었을 때
			if GetSwitchCount(cnum, 484) > 0 then --> 퀘스트 3 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 250개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",15,"응",16,"아니" --> 퀘스트 3 시작 권유
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> 퀘스트 1 완료되었을 때
			if GetSwitchCount(cnum, 482) > 0 then --> 퀘스트 2 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 100개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				else
					return 0
				end

			else
				return 3,0,"다시 왔구나? 국기를 한번더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",13,"응",14,"아니" --> 퀘스트 2 시작 권유
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> 퀘스트 1 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 10개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 100개를 모아왔어?",21,"응",22,"아니"
				else
					return 0
				end

			else
				return 3,0,"월드컵 기념 이벤트! 자~자~참여해봐~!",11,"응",12,"아니" --> 퀘스트 1 시작 권유
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 관련
	elseif req == 11 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",111,"응",112,"아니"

	elseif req == 12 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> 퀘스트 1 시작 스위치
		StartQuest(cnum, 176) --> 퀘스트 1 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 100개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 100개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 10개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 100개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 100개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 100개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 100개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 100개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 100개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 100개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 100개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 100개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 100개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 100개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 100개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 100개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 100개를 모아서 돌아오면돼!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 2칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 10개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 10개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 2 관련
	elseif req == 13 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",113,"응",114,"아니"

	elseif req == 14 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> 퀘스트 2 시작 스위치
		StartQuest(cnum, 177) --> 퀘스트 2 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 100개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 1000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"어서 카메룬 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 3 관련
	elseif req == 15 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",115,"응",116,"아니"

	elseif req == 16 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> 퀘스트 3 시작 스위치
		StartQuest(cnum, 178) --> 퀘스트 3 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 250개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 2500개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 250개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 250개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 4 관련
	elseif req == 17 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",117,"응",118,"아니"

	elseif req == 18 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> 퀘스트 4 시작 스위치
		StartQuest(cnum, 179) --> 퀘스트 4 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 500개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 5000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

	end
end

function NPC_QUEST_389(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> 퀘스트 4 완료되었을 때
				return 1,0,""..name.."~! 네 덕분에 국기 판매를 재개 할 수 있게 되었어~! 고마워!" --> 퀘스트 완료

		elseif GetSwitchCount(cnum, 485) > 0 then --> 퀘스트 3 완료되었을 때
			if GetSwitchCount(cnum, 486) > 0 then --> 퀘스트 4 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 500개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",17,"응",18,"아니" --> 퀘스트 4 시작 권유
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> 퀘스트 2 완료되었을 때
			if GetSwitchCount(cnum, 484) > 0 then --> 퀘스트 3 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 250개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",15,"응",16,"아니" --> 퀘스트 3 시작 권유
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> 퀘스트 1 완료되었을 때
			if GetSwitchCount(cnum, 482) > 0 then --> 퀘스트 2 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 100개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				else
					return 0
				end

			else
				return 3,0,"다시 왔구나? 국기를 한번더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",13,"응",14,"아니" --> 퀘스트 2 시작 권유
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> 퀘스트 1 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 10개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 100개를 모아왔어?",21,"응",22,"아니"
				else
					return 0
				end

			else
				return 3,0,"월드컵 기념 이벤트! 자~자~참여해봐~!",11,"응",12,"아니" --> 퀘스트 1 시작 권유
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 관련
	elseif req == 11 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",111,"응",112,"아니"

	elseif req == 12 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> 퀘스트 1 시작 스위치
		StartQuest(cnum, 176) --> 퀘스트 1 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 100개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 100개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 10개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 100개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 100개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 100개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 100개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 100개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 100개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 100개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 100개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 100개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 100개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 100개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 100개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 100개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 100개를 모아서 돌아오면돼!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 2칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 10개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 10개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 2 관련
	elseif req == 13 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",113,"응",114,"아니"

	elseif req == 14 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> 퀘스트 2 시작 스위치
		StartQuest(cnum, 177) --> 퀘스트 2 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 100개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 1000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"어서 카메룬 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 3 관련
	elseif req == 15 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",115,"응",116,"아니"

	elseif req == 16 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> 퀘스트 3 시작 스위치
		StartQuest(cnum, 178) --> 퀘스트 3 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 250개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 2500개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 250개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 250개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 4 관련
	elseif req == 17 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",117,"응",118,"아니"

	elseif req == 18 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> 퀘스트 4 시작 스위치
		StartQuest(cnum, 179) --> 퀘스트 4 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 500개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 5000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

	end
end

function NPC_QUEST_390(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> 퀘스트 4 완료되었을 때
				return 1,0,""..name.."~! 네 덕분에 국기 판매를 재개 할 수 있게 되었어~! 고마워!" --> 퀘스트 완료

		elseif GetSwitchCount(cnum, 485) > 0 then --> 퀘스트 3 완료되었을 때
			if GetSwitchCount(cnum, 486) > 0 then --> 퀘스트 4 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 500개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",17,"응",18,"아니" --> 퀘스트 4 시작 권유
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> 퀘스트 2 완료되었을 때
			if GetSwitchCount(cnum, 484) > 0 then --> 퀘스트 3 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 250개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",15,"응",16,"아니" --> 퀘스트 3 시작 권유
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> 퀘스트 1 완료되었을 때
			if GetSwitchCount(cnum, 482) > 0 then --> 퀘스트 2 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 100개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				else
					return 0
				end

			else
				return 3,0,"다시 왔구나? 국기를 한번더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",13,"응",14,"아니" --> 퀘스트 2 시작 권유
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> 퀘스트 1 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 10개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 100개를 모아왔어?",21,"응",22,"아니"
				else
					return 0
				end

			else
				return 3,0,"월드컵 기념 이벤트! 자~자~참여해봐~!",11,"응",12,"아니" --> 퀘스트 1 시작 권유
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 관련
	elseif req == 11 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",111,"응",112,"아니"

	elseif req == 12 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> 퀘스트 1 시작 스위치
		StartQuest(cnum, 176) --> 퀘스트 1 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 100개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 100개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 10개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 100개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 100개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 100개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 100개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 100개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 100개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 100개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 100개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 100개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 100개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 100개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 100개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 100개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 100개를 모아서 돌아오면돼!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 2칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 10개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 10개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 2 관련
	elseif req == 13 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",113,"응",114,"아니"

	elseif req == 14 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> 퀘스트 2 시작 스위치
		StartQuest(cnum, 177) --> 퀘스트 2 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 100개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 1000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"어서 카메룬 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 3 관련
	elseif req == 15 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",115,"응",116,"아니"

	elseif req == 16 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> 퀘스트 3 시작 스위치
		StartQuest(cnum, 178) --> 퀘스트 3 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 250개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 2500개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 250개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 250개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 4 관련
	elseif req == 17 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",117,"응",118,"아니"

	elseif req == 18 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> 퀘스트 4 시작 스위치
		StartQuest(cnum, 179) --> 퀘스트 4 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 500개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 5000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

	end
end

function NPC_QUEST_391(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> 퀘스트 4 완료되었을 때
				return 1,0,""..name.."~! 네 덕분에 국기 판매를 재개 할 수 있게 되었어~! 고마워!" --> 퀘스트 완료

		elseif GetSwitchCount(cnum, 485) > 0 then --> 퀘스트 3 완료되었을 때
			if GetSwitchCount(cnum, 486) > 0 then --> 퀘스트 4 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 500개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 5000개를 모아왔어?",27,"응",28,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",17,"응",18,"아니" --> 퀘스트 4 시작 권유
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> 퀘스트 2 완료되었을 때
			if GetSwitchCount(cnum, 484) > 0 then --> 퀘스트 3 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 250개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 2500개를 모아왔어?",25,"응",26,"아니"
				else
					return 0
				end
			else
				return 3,0,"다시 왔구나? 국기를 한번 더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",15,"응",16,"아니" --> 퀘스트 3 시작 권유
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> 퀘스트 1 완료되었을 때
			if GetSwitchCount(cnum, 482) > 0 then --> 퀘스트 2 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 100개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 1000개를 모아왔어?",23,"응",24,"아니"
				else
					return 0
				end

			else
				return 3,0,"다시 왔구나? 국기를 한번더 모아볼래? 이전보다 더 쓸만한 아이템을 줄게 어때?",13,"응",14,"아니" --> 퀘스트 2 시작 권유
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> 퀘스트 1 시작 되었을 때
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"프랑스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"우루과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"멕시코 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"남아공 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"아르헨티나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"그리스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"나이지리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"대한민국 국기 10개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"잉글랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"미국 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"슬로베니아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"알제리 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"독일 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"세르비아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"호주 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"가나 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"네덜란드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"카메룬 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"덴마크 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"일본 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"이탈리아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"파라과이 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"슬로바키아 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"뉴질랜드 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"브라질 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"포르투갈 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"코트디부아르 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"북한 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"스페인 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"칠레 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"스위스 국기 100개를 모아왔어?",21,"응",22,"아니"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"온두라스 국기 100개를 모아왔어?",21,"응",22,"아니"
				else
					return 0
				end

			else
				return 3,0,"월드컵 기념 이벤트! 자~자~참여해봐~!",11,"응",12,"아니" --> 퀘스트 1 시작 권유
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 관련
	elseif req == 11 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",111,"응",112,"아니"

	elseif req == 12 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> 퀘스트 1 시작 스위치
		StartQuest(cnum, 176) --> 퀘스트 1 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 100개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 100개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 10개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 100개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 100개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 100개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 100개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 100개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 100개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 100개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 100개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 100개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 100개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 100개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 100개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 100개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 100개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 100개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 100개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 100개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 100개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 100개를 모아서 돌아오면돼!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 2칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 10개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1단계 보상
					AddItemCount(cnum, 432, 5)	-- 1단계 보상
					SetSwitchCount(cnum, 481, 1)	-- 1단계 보상 완료
					EndQuest(cnum, 176) --> 퀘스트 1 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 10개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 2 관련
	elseif req == 13 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",113,"응",114,"아니"

	elseif req == 14 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> 퀘스트 2 시작 스위치
		StartQuest(cnum, 177) --> 퀘스트 2 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 100개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 1000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 1000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 100개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2단계 보상
					AddItemCount(cnum, 432, 10)	-- 2단계 보상
					AddItemCount(cnum, 435, 5)	-- 2단계 보상
					SetSwitchCount(cnum, 483, 1)	-- 2단계 보상 완료
					EndQuest(cnum, 177) --> 퀘스트 2 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 1000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 100개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"어서 카메룬 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 1000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 3 관련
	elseif req == 15 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",115,"응",116,"아니"

	elseif req == 16 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> 퀘스트 3 시작 스위치
		StartQuest(cnum, 178) --> 퀘스트 3 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 250개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 2500개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 2500개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 250개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3단계 보상
					AddItemCount(cnum, 796, 3)  -- 3단계 보상
					AddItemCount(cnum, 4315, 3)  -- 3단계 보상
					SetSwitchCount(cnum, 485, 1)	-- 3단계 보상 완료
					EndQuest(cnum, 178) --> 퀘스트 3 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 2500개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 250개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 2500개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 4 관련
	elseif req == 17 then
		return 3,0,"자~월드컵 32강 출전국 중에 한 나라를 뽑는거야~! 어떤 나라가 나와도 그것은 "..name.."의 운이야. 뽑아볼래?",117,"응",118,"아니"

	elseif req == 18 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> 퀘스트 4 시작 스위치
		StartQuest(cnum, 179) --> 퀘스트 4 등록

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A조 피파랭킹 9위 프랑스를 뽑았네~ "..name.."~ 프랑스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A조 피파랭킹 16위 우루과이를 뽑았네~ "..name.."~ 우루과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A조 피파랭킹 17위 멕시코를 뽑았네~ "..name.."~ 멕시코 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A조 피파랭킹 83위 남아공을 뽑았네~ "..name.."~ 남아공 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B조 피파랭킹 7위 아르헨티나를 뽑았네~ "..name.."~ 아르헨티나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B조 피파랭킹 13위 그리스를 뽑았네~ "..name.."~ 그리스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B조 피파랭킹 21위 나이지리아를 뽑았네~ "..name.."~ 나이지리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B조 피파랭킹 47위 대한민국을 뽑았네~ "..name.."~ 대한민국 국기는 500개만 모아서 돌아오면돼!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C조 피파랭킹 8위 잉글랜드를 뽑았네~ "..name.."~ 잉글랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C조 피파랭킹 14위 미국을 뽑았네~ "..name.."~ 미국 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C조 피파랭킹 25위 슬로베니아를 뽑았네~ "..name.."~ 슬로베니아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C조 피파랭킹 30위 알제리를 뽑았네~ "..name.."~ 알제리 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D조 피파랭킹 6위 독일을 뽑았네~ "..name.."~ 독일 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D조 피파랭킹 15위 세르비아를 뽑았네~ "..name.."~ 세르비아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D조 피파랭킹 20위 호주를 뽑았네~ "..name.."~ 호주 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D조 피파랭킹 32위 가나를 뽑았네~ "..name.."~ 가나 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E조 피파랭킹 4위 네덜란드를 뽑았네~ "..name.."~ 네덜란드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E조 피파랭킹 19위 카메룬을 뽑았네~ "..name.."~ 카메룬 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E조 피파랭킹 36위 덴마크를 뽑았네~ "..name.."~ 덴마크 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E조 피파랭킹 45위 일본을 뽑았네~ "..name.."~ 일본 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F조 피파랭킹 5위 이탈리아를 뽑았네~ "..name.."~ 이탈리아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F조 피파랭킹 31위 파라과이를 뽑았네~ "..name.."~ 파라과이 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F조 피파랭킹 34위 슬로바키아를 뽑았네~ "..name.."~ 슬로바키아 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F조 피파랭킹 78위 뉴질랜드를 뽑았네~ "..name.."~ 뉴질랜드 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G조 피파랭킹 1위 브라질을 뽑았네~ "..name.."~ 브라질 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G조 피파랭킹 3위 포르투갈을 뽑았네~ "..name.."~ 포르투갈 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G조 피파랭킹 27위 코트디부아르를 뽑았네~ "..name.."~ 코트디부아르 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G조 피파랭킹 105위 북한을 뽑았네~ "..name.."~ 북한 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H조 피파랭킹 2위 스페인을 뽑았네~ "..name.."~ 스페인 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H조 피파랭킹 18위 칠레를 뽑았네~ "..name.."~ 칠레 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H조 피파랭킹 24위 스위스를 뽑았네~ "..name.."~ 스위스 국기 5000개를 모아서 돌아오면돼!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H조 피파랭킹 38위 온두라스를 뽑았네~ "..name.."~ 온두라스 국기 5000개를 모아서 돌아오면돼!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"이런 좋은 기회를 놓치면 후회할텐데..마음이 바뀌면 다시 와~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"아이템 인벤토리가 부족해서 아이템을 줄 수가 없네. 아이템 인벤토리를 3칸 이상 비우고 다시 올래?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"프랑스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"우루과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"멕시코 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"남아공 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"아르헨티나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"그리스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"나이지리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"대한민국 국기 500개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"잉글랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"미국 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로베니아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"알제리 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"독일 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"세르비아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"호주 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"가나 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"네덜란드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"카메룬 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"덴마크 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"일본 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"이탈리아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"파라과이 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"슬로바키아 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"뉴질랜드 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"브라질 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"포르투갈 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"코트디부아르 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"북한 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스페인 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"칠레 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"스위스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4단계 보상
					AddItemCount(cnum, 796, 3)  -- 4단계 보상
					AddItemCount(cnum, 4315, 3)  -- 4단계 보상
					AddItemCount(cnum, 8298, 1)  -- 4단계 보상
					SetSwitchCount(cnum, 487, 1)	-- 4단계 보상 완료
					EndQuest(cnum, 179) --> 퀘스트 4 해제
					return 1,0,"수고했어~! 여기 쓸만한 아이템을 줄게."
				else
					return 1,0,"온두라스 국기 5000개를 가지고 있지 않은데? 확인해볼래?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"어서 프랑스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"어서 우루과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"어서 멕시코 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"어서 남아공 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"어서 아르헨티나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"어서 그리스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"어서 나이지리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"어서 대한민국 국기 500개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"어서 잉글랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"어서 미국 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"어서 슬로베니아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"어서 알제리 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"어서 독일 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"어서 세르비아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"어서 호주 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"어서 가나 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"어서 네덜란드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"어서 카메룬 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"어서 덴마크 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"어서 일본 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"어서 이탈리아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"어서 파라과이 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"어서 슬로바키아 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"어서 뉴질랜드 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"어서 브라질 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"어서 포르투갈 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"어서 코트디부아르 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"어서 북한 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"어서 스페인 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"어서 칠레 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"어서 스위스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"어서 온두라스 국기 5000개를 모아와~! 쓸만한 아이템을 줄게."
		else
			return 0
		end

	end
end
