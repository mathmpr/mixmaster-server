function NPC_QUEST_984(cnum, reqNumber)


	req = reqNumber
	name = GetHeroName(cnum)
	Type = GetHeroType(cnum)
	Lv = GetHeroLv(cnum)


		if req == 1 then
			if GetSwitchCount(cnum, 510) < 1 then --> 퀘스트 보상을 받았는지 검사
				if GetSwitchCount(cnum, 500) > 0 then --> 퀘스트를 완료했었는지 검사
					return 2,0,"짧고도 긴 월드컵 여정이 끝이났네요!! "..name.." 월드컵은 즐겁게 즐기셨나요? 이전에 저와 내기를 하신거 기억하시나요?",2,"기억하고 있습니다."

				else --> 아닐경우
					return 1,0,"짧고도 긴 월드컵 여정이 끝이났네요!! "..name.." 월드컵은 즐겁게 즐기셨나요? 아쉽게도 "..name.."께서는 우승국 맞추기에 참여하시지 못했었네요. 아쉽지만 다음 월드컵을 기대해 보겠습니다."
				end
			else
				return 1,0,"다시한번 우승국 맞추신 것 축하드립니다. 벌써부터 다음 월드컵이 기다려지는데요?"
			end

		elseif req == 2 then

				if GetSwitchCount(cnum, 501) == 51 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '프랑스'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 52 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '우루과이'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 53 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '멕시코'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 54 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '남아공'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 55 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '아르헨티나'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 56 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '그리스'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 57 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '나이지리아'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 58 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '대한민국'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 59 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '잉글랜드'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 60 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '미국'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 61 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '슬로베니아'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 62 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '알제리'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 63 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '독일'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 64 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '세르비아'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 65 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '호주'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 66 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '가나'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 67 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '네덜란드'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 68 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '카메룬'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 69 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '덴마크'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 70 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '일본'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 71 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '이탈리아'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 72 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '파라과이'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 73 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '슬로바키아'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 74 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '뉴질랜드'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 75 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '브라질'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 76 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '포르투갈'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 77 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '코트디부아르'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 78 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '북한'이였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 79 then
					return 2,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '스페인'이였군요. 놀랍습니다! 우승팀을 정확히 맞춰주셨네요~!! 어떻게 아셨죠? 역시 예사롭지 않아보였는데.. 대단하군요! 어쨋든 제가 "..name.."와 약속한데로 제가 선물을 드려야겠네요!",3,"저도 놀랐습니다. 선물 주세요~"
				elseif GetSwitchCount(cnum, 501) == 80 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '칠레'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 81 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '스위스'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"
				elseif GetSwitchCount(cnum, 501) == 82 then
					return 1,0,"역시 기억하고 계셨네요.@"..name.."께서 찍으신 팀은 '온두라스'였군요. 아쉽지만 "..name.."께서 선택하신 팀이 우승을 하지 못했네요. 이번 월드컵은 특히 이변이 많았던 것 같습니다. 벌써 부터 다음 월드컵이 기다려지는데요?"

				end


		elseif req == 3 then
				return 5,0,"자~! 이제 그럼 받고 싶은 선물을 골라볼까요?",4,"[1번 선물]",5,"[2번 선물]",18,"[1번 선물 설명]",19,"[2번 선물 설명]"
				
		elseif req == 4 then
			
			if GetRemainPocket(cnum) > 4 then
				if GetOccupiedHenchPocket(cnum, 1) > 19 then
					return 1,0,"선물을 받기 위해선 헨치 인벤토리 공간이 1개가 필요합니다. 헨치 인벤토리를 비우고 다시 저에게 말을 걸어주세요."
				else
					return 7,0,"자신의 레벨을 선택해 주세요.",6,"[1~49레벨]",7,"[50~69레벨]",8,"[70~89레벨]",9,"[90~114레벨]",10,"[115~129레벨]",11,"[130~175레벨]"
				end
			else
				return 1,0,"선물을 받기 위해선 인벤토리 공간이 5개가 필요합니다. 인벤토리를 비우고 다시 저에게 말을 걸어주세요."
			end

		elseif req == 5 then
			
			if GetRemainPocket(cnum) > 4 then
				if GetOccupiedHenchPocket(cnum, 1) > 19 then
					return 1,0,"선물을 받기 위해선 헨치 인벤토리 공간이 1개가 필요합니다. 헨치 인벤토리를 비우고 다시 저에게 말을 걸어주세요."
				else
					return 7,0,"자신의 레벨을 선택해 주세요.",12,"[1~49레벨]",13,"[50~69레벨]",14,"[70~89레벨]",15,"[90~114레벨]",16,"[115~129레벨]",17,"[130~175레벨]"
				end
			else
				return 1,0,"선물을 받기 위해선 인벤토리 공간이 5개가 필요합니다. 인벤토리를 비우고 다시 저에게 말을 걸어주세요."
			end

		elseif req == 6 then

        		if Lv > 0 and Lv < 50 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 671, 0) --> 월드컵 터틀리 헨치 45

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 7 then

        		if Lv > 49 and Lv < 60 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 672, 0) --> 월드컵 터틀리 헨치 65

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 8 then

        		if Lv > 59 and Lv < 90 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 673, 0) --> 월드컵 터틀리 헨치 85

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 9 then

        		if Lv > 89 and Lv < 115 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 674, 0) --> 월드컵 터틀리 헨치 105

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 10 then

        		if Lv > 114 and Lv < 130 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 675, 0) --> 월드컵 터틀리 헨치 125

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 11 then

        		if Lv > 129 and Lv < 176 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8483, 1) --> 월드컵 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8338, 3) --> 리턴 스크롤
				AddItemCount(cnum, 8339, 3) --> 캐릭터 부활 스크롤
				AddItemCount(cnum, 8340, 3) --> 헨치 부활 스크롤
				AddHenchAndState(cnum, 691, 0) --> 월드컵 터틀리 헨치 145

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 12 then

        		if Lv > 0 and Lv < 50 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 671, 0) --> 월드컵 터틀리 헨치 45

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 13 then

        		if Lv > 49 and Lv < 60 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 672, 0) --> 월드컵 터틀리 헨치 65

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 14 then

        		if Lv > 59 and Lv < 90 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 673, 0) --> 월드컵 터틀리 헨치 85

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 15 then

        		if Lv > 89 and Lv < 115 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 674, 0) --> 월드컵 터틀리 헨치 105

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 16 then

        		if Lv > 114 and Lv < 130 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 675, 0) --> 월드컵 터틀리 헨치 125

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 17 then

        		if Lv > 129 and Lv < 176 then --> 검사

				AddSwitchCount(cnum, 510, 1)  --> 퀘스트 완료 값
				AddItemCount(cnum, 8484, 1) --> 터틀리 변신갑옷
				AddItemCount(cnum, 8341, 3) --> 슈퍼먹구름
				AddItemCount(cnum, 8424, 3) --> 슈퍼더블파워
				AddItemCount(cnum, 8425, 3) --> 슈퍼 풀 메가 파워
				AddItemCount(cnum, 8426, 3) --> 슈퍼 풀 스킬 파워
				AddHenchAndState(cnum, 691, 0) --> 월드컵 터틀리 헨치 145

				return 1,0,"약속한데로 선물을 드리겠습니다. 참 맞추기 힘들었을건데요~ 대단하시네요! 많고 많은 이변이 있었던 월드컵 벌써부터 다음 월드컵이 기다려집니다. 언제나 대~한민국!! 화이팅입니다!!자, 이제 그럼 선물을 드릴께요.@잘쓰세요~!! 축하합니다~"

			else
				return 2,0,"해당 레벨에 속하지 않습니다. 다시 한번 확인 부탁드립니다.",3,"[뒤로가기]"
			end

		elseif req == 18 then
				return 2,0,"1. 월드컵 터틀리 변신갑옷(30일)@2. 슈퍼먹구름@3. 리턴스크롤@4. 캐릭터부활스크롤@5. 헨치부활스크롤@6. 월드컵 터틀리 헨치(30일)",3,"[뒤로가기]"

		elseif req == 19 then
				return 2,0,"1. 터틀리 변신갑옷(30일)@2. 슈퍼먹구름@3. 슈퍼더블파워@4. 슈퍼 풀 메가파워@5. 슈퍼 풀 스킬파워@6. 월드컵 터틀리 헨치(30일)",3,"[뒤로가기]"

	end
end