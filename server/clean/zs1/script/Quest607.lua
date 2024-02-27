function NPC_QUEST_1595(cnum, reqNumber) --[2011할로윈이벤트]변신갑옷 제작NPC ,1일 한 번, 1시간짜리 할로윈 이벤트 변신갑옷을 랜덤으로 지급.--



req = reqNumber

CriTime = 3600
if req == 1 then

	return 5,0, "어서오시게~ @10월 31일 ''할로윈 데이''를 맞이하여 @내가 손수 제작한 할로윈 갑옷을 나누어주고 있다네~ @필요하면 받아가도록 하게~ @이래뵈도 대장장이들 중 top10위에 위치하고 있다네! @핫핫핫!",55,"[갑옷제작]",4,"[갑옷수령]",5,"사탕좀 나눠주세요!",6,"맛있는 호박과자"



---------------------------------------------------------------------------------------------------------------

elseif req == 4 then --갑옷수령

	if GetRemainPocket(cnum) < 1 then --(710 ==2 or 710 > 1 or 710 X)
	return 1,0, "받기 전에 인벤토리는 비우고 와야지."


	else

		if GetSwitchCount(cnum, 710) < 1 then
			random = SetRandom(cnum,1,85)



			if random < 10 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8848 ,1) --아그작데빌 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)아그작데빌 변신갑옷을 받았습니다.'"

			elseif random >=10 and random < 20 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8842,1) --메롱니 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)메롱니 변신갑옷을 받았습니다.'"

			elseif random >=20 and random < 30 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8845,1) --닥터캘빈 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)닥터캘빈 변신갑옷을 받았습니다.'"

			elseif random >=30 and random < 40 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8843,1) --마수리 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)마수리 변신갑옷을 받았습니다.'"

			elseif random >=40 and random < 50 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8847,1) --몽걀 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)몽걀 변신갑옷을 받았습니다.'"

			elseif random >=50 and random < 60 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8846,1) --스컬위저 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)아그작데빌 변신갑옷을 받았습니다.'"

			elseif random >=60 and random < 70 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8844,1) --피로스티 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)피로스티 변신갑옷을 받았습니다.'"

			elseif random >=70 and random <= 85 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8841,1) --잭오랜턴 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)잭오랜턴 변신갑옷을 받았습니다.'"
			end

		elseif GetCurrentTime () - GetSwitchTime(cnum, 721) > CriTime then

			random = SetRandom(cnum,1,85)



			if random < 10 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8848 ,1) --아그작데빌 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)아그작데빌 변신갑옷을 받았습니다.'"

			elseif random >=10 and random < 20 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8842,1) --메롱니 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)메롱니 변신갑옷을 받았습니다.'"

			elseif random >=20 and random < 30 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8845,1) --닥터캘빈 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)닥터캘빈 변신갑옷을 받았습니다.'"

			elseif random >=30 and random < 40 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8843,1) --마수리 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)마수리 변신갑옷을 받았습니다.'"

			elseif random >=40 and random < 50 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8847,1) --몽걀 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)몽걀 변신갑옷을 받았습니다.'"

			elseif random >=50 and random < 60 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8846,1) --스컬위저 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)아그작데빌 변신갑옷을 받았습니다.'"

			elseif random >=60 and random < 70 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8844,1) --피로스티 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)피로스티 변신갑옷을 받았습니다.'"

			elseif random >=70 and random <= 85 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8841,1) --잭오랜턴 갑옷
			SetSwitchCount(cnum, 710,1)
			return 1,0, "내가 손수 만든 변신갑옷일세. @착용감이 꽤나 좋을걸세. @잘 사용하게나!@@@@@'(체험용)잭오랜턴 변신갑옷을 받았습니다.'"
			end



		else

		RemainTime = CriTime - (GetCurrentTime () - GetSwitchTime(cnum, 721))
		Hour = RemainTime / 3600
		Min = (RemainTime % 3600) / 60
		Second = (RemainTime % 3600) % 60
		return 1,0, "사용 기간이 꽤 짧다는걸 제외하면 @꽤 쓸만할걸세. 자, 갑옷을 받았으니 입고 마을을 돌아다녀보게~@갑옷은 1시간 당 한 번씩만 지급되니 @["..math.floor(Min).."분 "..math.floor(Second).."초]가 지난 뒤 @다시 오게나..@@'특정 npc는 자신과 비슷한 갑옷을 입고 있거나, 혹은 잭오랜턴 갑옷을 입고 말을 걸 경우 반응이 달라집니다.'"

		end

	end


elseif req == 5 then --사탕좀 나눠주세요 , 호박과자 준 여부에 따라 나눔

	if GetSwitchCount(cnum, 710) == 2 then --호박과자 줌
		if GetSwitchCount(cnum, 723) < 10 then
		AddItemCount(cnum, 8835, 10)
		AddSwitchCount(cnum, 723, 1)
		return 1,0, "열심히 모으고 있구만! @성실한 히어로씨에게 사탕을 조금 나눠주겠네~"

		else --이상일때
		return 1,0, "히어로씨는 욕심도 많지 그려~"
		end

	else --호박과자 안준경우
		if GetSwitchCount(cnum, 723) < 10 then
			AddItemCount(cnum ,8835, 1)
			AddSwitchCount(cnum, 723, 1)
			return 1,0, "좀 더 수고를 해야겠구만... @주는게 있으면 오는것도 있는법.."
		else
			return 1,0, "히어로씨는 욕심도 많지 그려~"
		end
	end

elseif req == 6 then --맛있는 호박과자
	if GetItemCount(cnum, 8836,0) < 1 then--인벤에 하나도 없을경우
		if GetSwitchCount(cnum, 710) == 2 then

		return 1,0, "해피 할로윈 데이를 보내시게~"

		elseif GetSwitchCount(cnum,710) == 1 then
		return 1,0, "쩝쩝... @@호박과자.. @@달콤한 호박맛이겠지..@@ 먹어보고싶다네.."

		else --710값 X
		return 1,0, "할로윈의 기본은 변장이라지~"
		end

	else --인벤에 있을경우(줬는지 안줬는지 조사)
		if GetSwitchCount(cnum, 710) == 2 then --호박과자 줌
		SetSwitchCount(cnum, 715,2)
		return 1,0, "해피 할로윈 데이를 보내시게~"


		elseif GetSwitchCount(cnum, 710) < 1 then -- 710값 안받은경우
		return 1,0, "할로윈의 기본은 변장이라지~"

		else --일일갑옷수령 완료, 호박과자 인벤에 있을 경우 주면서 스위치값이 2 (제공완료)로 바뀜
		SetSwitchCount(cnum,710,2) --스위치가 호박과자 스위치로 변경
		AddItemCount(cnum, 8836, -1)
		AddItemCount(cnum, 8835, 5) --사탕 5개 줌
		return 1,0, "참으로 맛있어 보이는 호박과자로군.. @자네는 왠지 배가 불러 보이니 내가 대신 먹어주겠네. @고맙네~"
		end
	end

elseif req == 43 then --일반보상
	if GetRemainPocket(cnum) < 2 then
	return 1,0, "가방이 무겁구만.. @   그냥 갑옷, 바닥에 버릴까?"
	end

if GetSwitchCount(cnum, 715) < 1 then
	if GetItemCount(cnum, 8841,2) == 1 then
		EndQuest(cnum,222)
		SetSwitchCount(cnum, 715,1)
		AddItemCount(cnum, 8839, -1)
		AddItemCount(cnum, 8859, 1)
		AddItemCount(cnum, 8835, 15) --넌 운이 좋으니 사탕을 더 줄게
	return 1,0, "귀신이 곡할 노릇이지.. @갑옷을 준 기억이 없는데 말야.@@@@@''잭오랜턴 변신갑옷'과 '할로윈 사탕 15개'를 받았습니다.'"

	else
		if GetItemCount(cnum, 8839,0) >= 1 then
		EndQuest(cnum,222)
		SetSwitchCount(cnum, 715,1)
		AddItemCount(cnum, 8839, -1)
		AddItemCount(cnum, 8859, 1)
		AddItemCount(cnum, 8835, 5)
		return 1,0, "오...농담이었는데 정말 가지고 오다니! @고맙구만 허허.@@@@@''잭오랜턴 변신갑옷'과 '할로윈 사탕 5개'를 받았습니다.'"
		else
		return 1,0, "특별한 사탕이 없지않은가!!"
		end

	end
else
return 1,0, "자네는 이미 갑옷을 받지 않았는가? @아직 꼬마아이에게 주지 않았는가? @계속 울고있을테니 얼른 갖다주게나.."
end

elseif req == 55 then

if GetSwitchCount(cnum, 721) ==3 then
	if GetSwitchCount(cnum, 711) < 1 then
	StartQuest(cnum,223)
	return 2,0, "갑옷제작? @잭오랜턴 변신갑옷을 말하는건가? @아아..꼬마아이가 부탁한다던게 히어로씨였군..@그렇다면 모아야 할 재료는 다음과 같네. [['호박 껍질', '불멸의 양초' ,  '낡은가죽' , '악마의 손톱' 각각 30개씩]] 모아오도록 하게. @우선 재료가 있는지 확인하고 오게.",56,"재료가 있어요!"

	elseif GetSwitchCount(cnum, 711) == 1 then
	return 2,0, "갑옷제작? @잭오랜턴 변신갑옷을 말하는건가? @아아..꼬마아이가 부탁한다던게 히어로씨였군..@어디보자.. 아, 전에 만들었었구만?.",43,"네, 제작한걸 받으러 왔어요."
	end
else --GetSwitchCount(cnum, 721) == 2 then
return 1,0, "갑옷제작? 어디에 쓰려고 그러나..?? @히어로씨는 내가 한 시간에 한 번씩 지급해주니 필요없을테고..@우선 '잭오랜턴 변신갑옷이 나오거든변장해서 꼬마아이에게 말'을 걸어보게나. 그럼 히어로씨에게 도와달라고 요청할테니 그때 다시 오게."

end

elseif req == 56 then

	if GetSwitchCount(cnum, 711) < 1 then
		if GetItemCount(cnum, 8837, 0) < 30 and GetItemCount(cnum, 8838,0) < 30 and GetItemCount(cnum, 500,0) < 30 and GetItemCount(cnum, 8839,0) < 30 then
			return 1,0, "이런, 갑옷제작에 필요한 재료가 부족하지 않은가..."

		else

			return 2,0, "재료를 잘 모아왔구만. @잠시만 기다리게... @@@[깡깡-!!]@@@",57,"네!"

		end
	else
		return 1,0, "갑옷을 이미 만들었지 않는가...@가서 특별한 사탕이나 가지고 오게!@'특별한 사탕 : 꼬마아이 NPC에게서 사탕수집 이벤트를 완료하면 획득할 수 있습니다'"
	end
elseif req == 57 then
			EndQuest(cnum,223)
			SetSwitchCount(cnum, 711,1)
			AddItemCount(cnum, 8837, -30)
			AddItemCount(cnum, 8838, -30)
			AddItemCount(cnum, 500, -30)
			AddItemCount(cnum, 496, -30)
	return 2,0, "갑옷 제작에 성공했다네!",58,"수고하셨습니다. 자 이제 갑옷을 주세요!"

elseif req == 58 then

	return 2,0, "음... 모처럼 힘들게 갑옷을 제작했는데 @그냥 주긴 아깝고.......@@그래! 마침 할로윈 사탕에 질리던 참인데, @'특별한 사탕' 1개를 내게 가져다주면 갑옷을 주겠네.",59,"에엑~?"

elseif req == 59 then
StartQuest(cnum,222)
	return 1,0, "나도 무료로 봉사하는건 아니잖는가! @하하하, 꼭 좀 갖다주게~ (무슨 맛인지 정말 궁금했어..중얼중얼)"





end

end

