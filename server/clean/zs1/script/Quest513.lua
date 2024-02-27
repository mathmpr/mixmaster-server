function NPC_QUEST_686(cnum, reqNumber)

-- 다음부터는 밸런스에 관계된 것들 수집 아이템의 개수, 수집 아이템의 idx 등은 변수를 사용하자. 후에 밸런싱 시 매우 불편하다.
-- 110308 부유석 수집 요구 개수 10개 확정, 마스터 헨치 성장 요구 레벨 150 확정, 배틀 헨치 지급 레벨 155 확정


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 헨치 교환권이 없고, 인벤토리에 헨치도 없을 때(헨치 배틀 상태는 체크하지 않음)
					
				return 2,0,"자~스페셜한 코어를 팝니다~@활~활~! 불타오르는 불뿔콩!@똥개그의 달인 마시마로!@일자무식 깜부!@믹마 상점에서 판매하는 '헨치 교환권' 구입하여 가져오시면 좋은 녀석으로 바꿔 드립니다!!",1111,"이런게 있었네요..!"
			else -- 헨치 교환권이 없고, 인벤토리에 헨치가 있을 때
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		else -- 헨치 교환권이 있을 때
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- 헨치교환권이 있고, 인벤토리에 헨치가 없을 때(헨치 배틀 상태는 체크하지 않음)
				return 5,0,"어서옵쇼~!@헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"
			else -- 헨치교환권이 있고, 인벤토리에 헨치가 있을 때(헨치 배틀 상태는 체크하지 않음)
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"아! 참고로!@[마스터 헨치 퀘스트]@[배틀 헨치 변신 퀘스트]는@저에게 보여줄 마스터 헨치를 인벤토리에 넣고 오십쇼!"


	elseif req == 112 then
		return 5,0,"헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"


	elseif req == 113 then
		return 5,0,"스페셜한 헨치를 키우고 계시는군요!!@어떤 녀석의 레벨을 올려 오셨나요?",10,"치치",11,"앵앵",16,"미르",17,"니놈"





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"어떤 마스터 헨치를 배틀헨치로 변신을 시키고 싶은갑쇼?",18,"치치",19,"앵앵",20,"미르",21,"니놈"


----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- 레벨 130 이상의 치치가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 645) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개",1056,"네~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"치치를 레벨 150까지 키워왔는갑쇼?",1026,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 치치가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 치치가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 치치의 잠재력을 보고 싶지 않은갑쇼?",1006,"보고싶어요!"
        end
			end
    else -- 치치가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1006 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 치치를 가지고 계신뎁쇼??",1026,"네~!"
    else
      return 2,0,"자~치치가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..치치 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1016,"네"
    end   

  elseif req == 1016 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- 치치 1차 퀘스트 창
    return 2,0,"그럼 치치를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1026 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 644, 2) -- 치치 1차 퀘스트 종료
          EndQuest(cnum, 199) -- 치치 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 치치가 엄청난 힘을 내고 있는 뎁쇼? 이제 치치의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1036,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1036 then -- 치치 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1046,"네~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 200) -- 치치 2차 퀘스트 창
    return 1,0,"참고로 [오래된 용뼈], [작은 머리뿔], [큰 머리뿔]은 초, 중, 고 레벨의 드래곤 몬스터에게서 얻을 수 있습죠."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1066,"[붉은 빛 부유석 결정체]",1076,"[회색 빛 부유석 결정체]",1086,"[파란 빛 부유석 결정체]",1096,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 치치를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 치치를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 치치 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 레벨 150 이상의 치치가 있는지 검사
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- 레벨 130 이상의 앵앵이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 650) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개",1156,"네~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"앵앵을 레벨 150까지 키워왔는갑쇼?",1126,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 앵앵이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 앵앵이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 앵앵의 잠재력을 보고 싶지 않은갑쇼?",1106,"보고싶어요!"
        end
			end
    else -- 앵앵이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1106 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 앵앵을 가지고 계신뎁쇼??",1126,"네~!"
    else
      return 2,0,"자~앵앵이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..앵앵 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1116,"네"
    end   

  elseif req == 1116 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
    return 2,0,"그럼 앵앵을 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1126 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 649, 2) -- 앵앵 1차 퀘스트 종료
          EndQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 앵앵이 엄청난 힘을 내고 있는 뎁쇼? 이제 앵앵의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1136,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1136 then -- 앵앵 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1146,"네~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 202) -- 앵앵 2차 퀘스트 창
    return 1,0,"참고로 [새의 부리], [노란 새털], [빛나는 새털]은 초, 중, 고 레벨의 새 몬스터에게서 얻을 수 있습죠."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1166,"[붉은 빛 부유석 결정체]",1176,"[회색 빛 부유석 결정체]",1186,"[파란 빛 부유석 결정체]",1196,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 앵앵을 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 앵앵을 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 앵앵 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 레벨 150 이상의 앵앵이 있는지 검사
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- 레벨 130 이상의 미르가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 655) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개",1256,"네~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"미르를 레벨 150까지 키워왔는갑쇼?",1226,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 미르가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 미르가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 미르의 잠재력을 보고 싶지 않은갑쇼?",1206,"보고싶어요!"
        end
			end
    else -- 미르가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1206 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 미르를 가지고 계신뎁쇼??",1226,"네~!"
    else
      return 2,0,"자~미르가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..미르 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1216,"네"
    end   

  elseif req == 1216 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- 미르 1차 퀘스트 창
    return 2,0,"그럼 미르를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1226 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 654, 2) -- 미르 1차 퀘스트 종료
          EndQuest(cnum, 203) -- 미르 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 미르가 엄청난 힘을 내고 있는 뎁쇼? 이제 미르의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1236,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1236 then -- 미르 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1246,"네~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 204) -- 미르 2차 퀘스트 창
    return 1,0,"참고로 [짐승의 털], [낡은 가죽], [온전한 가죽]은 초, 중, 고 레벨의 짐승 몬스터에게서 얻을 수 있습죠."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1266,"[붉은 빛 부유석 결정체]",1276,"[회색 빛 부유석 결정체]",1286,"[파란 빛 부유석 결정체]",1296,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 미르를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 미르를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 미르 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 레벨 150 이상의 미르가 있는지 검사
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- 레벨 130 이상의 니놈이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 660) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개",1356,"네~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"니놈를 레벨 150까지 키워왔는갑쇼?",1326,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 니놈이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 니놈이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 니놈의 잠재력을 보고 싶지 않은갑쇼?",1306,"보고싶어요!"
        end
			end
    else -- 니놈이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1306 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 니놈를 가지고 계신뎁쇼??",1326,"네~!"
    else
      return 2,0,"자~니놈이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..니놈 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1316,"네"
    end   

  elseif req == 1316 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- 니놈 1차 퀘스트 창
    return 2,0,"그럼 니놈를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1326 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 659, 2) -- 니놈 1차 퀘스트 종료
          EndQuest(cnum, 205) -- 니놈 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 니놈이 엄청난 힘을 내고 있는 뎁쇼? 이제 니놈의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1336,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1336 then -- 니놈 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1346,"네~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 206) -- 니놈 2차 퀘스트 창
    return 1,0,"참고로 [고철 조각], [나사 조각], [나사 한줌]은 초, 중, 고 레벨의 메탈 몬스터에게서 얻을 수 있습죠."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1366,"[붉은 빛 부유석 결정체]",1376,"[회색 빛 부유석 결정체]",1386,"[파란 빛 부유석 결정체]",1396,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 니놈를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 니놈를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 니놈 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 레벨 150 이상의 니놈이 있는지 검사
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"스페셜한 헨치 교환권이 있군요!@자자~ 마스터 헨치 중에@어떤 녀석의 교환권인가요?",6,"치치 헨치 교환권",7,"앵앵 헨치 교환권",8,"미르 헨치 교환권",9,"니놈 헨치 교환권"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 5,0,"불뿔콩! 좋은 녀석이지요~@레벨을 알려주시구려~",12,"불뿔콩 교환권(Lv.40)",13,"불뿔콩 교환권(Lv.60)",14,"불뿔콩 교환권(Lv.80)",15,"불뿔콩 교환권(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"마시마로! 좋은 녀석이지요~@레벨을 알려주시구려~",22,"마시마로 교환권(Lv.40)",23,"마시마로 교환권(Lv.60)",24,"마시마로 교환권(Lv.80)",25,"마시마로 교환권(Lv.100)",26,"마시마로 교환권(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"깜부! 좋은 녀석이지요~@레벨을 알려주시구려~",52,"깜부 교환권(Lv.40)",53,"깜부 교환권(Lv.60)",54,"깜부 교환권(Lv.80)",55,"깜부 교환권(Lv.100)",56,"깜부 교환권(Lv.120)"


		end

-------------------------------------------- 마스터 헨치 교환권 검사 및 레벨 선택

	elseif req == 6 then  -- 치치
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"치치! 좋은 녀석이지요~@레벨을 알려주시구려~",62,"치치 교환권(Lv.40)",63,"치치 교환권(Lv.60)",64,"치치 교환권(Lv.80)",65,"치치 교환권(Lv.100)",66,"치치 교환권(Lv.120)"


		end

	elseif req == 7 then -- 앵앵
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"앵앵! 좋은 녀석이지요~@레벨을 알려주시구려~",72,"앵앵 교환권(Lv.40)",73,"앵앵 교환권(Lv.60)",74,"앵앵 교환권(Lv.80)",75,"앵앵 교환권(Lv.100)",76,"앵앵 교환권(Lv.120)"


		end


	elseif req == 8 then  -- 미르
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"미르! 좋은 녀석이지요~@레벨을 알려주시구려~",82,"미르 교환권(Lv.40)",83,"미르 교환권(Lv.60)",84,"미르 교환권(Lv.80)",85,"미르 교환권(Lv.100)",86,"미르 교환권(Lv.120)"


		end

	elseif req == 9 then -- 니놈
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"니놈! 좋은 녀석이지요~@레벨을 알려주시구려~",92,"니놈 교환권(Lv.40)",93,"니놈 교환권(Lv.60)",94,"니놈 교환권(Lv.80)",95,"니놈 교환권(Lv.100)",96,"니놈 교환권(Lv.120)"


		end



------------
-- 치치
------------



	elseif req == 10 then -- 치치 장코로 교환
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 치치를 받았는지 알려주시구려~~",1001,"치치(Lv.40)",1002,"치치(Lv.60)",1003,"치치(Lv.80)",1004,"치치(Lv.100)",1005,"치치(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"음?! 치치의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"음?! 치치의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"음?! 치치의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"음?! 치치의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"음?! 치치의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end



	elseif req == 100 then -- 치치 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- 앵앵
------------


	elseif req == 11 then -- 앵앵 장코로 교환
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"음?! 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 앵앵을 받았는지 알려주시구려~~",1011,"앵앵(Lv.40)",1012,"앵앵(Lv.60)",1013,"앵앵(Lv.80)",1014,"앵앵(Lv.100)",1015,"앵앵(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end


	elseif req == 101 then -- 앵앵 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- 미르
------------
	elseif req == 16 then -- 미르 장코로 교환
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 미르를 받았는지 알려주시구려~~",1021,"미르(Lv.40)",1022,"미르(Lv.60)",1023,"미르(Lv.80)",1024,"미르(Lv.100)",1025,"미르(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"음?! 미르의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"음?! 미르의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"음?! 미르의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"음?! 미르의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"음?! 미르의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end



	elseif req == 102 then -- 미르 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- 니놈
------------
	elseif req == 17 then -- 니놈 장코로 교환
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"음?! 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 니놈을 받았는지 알려주시구려~~",1031,"니놈(Lv.40)",1032,"니놈(Lv.60)",1033,"니놈(Lv.80)",1034,"니놈(Lv.100)",1035,"니놈(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 니놈을 데리고 오면 안되는 뎁쇼..니놈을 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"음?! 니놈의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"음?! 니놈의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"음?! 니놈의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"음?! 니놈의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"음?! 니놈의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end




	elseif req == 103 then -- 니놈 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--불뿔콩
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",32,"네네~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",33,"네네~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",34,"네네~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",35,"네네~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--마시마로
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",42,"네네~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",43,"네네~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",44,"네네~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",45,"네네~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",46,"네네~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--깜부
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",521,"네네~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",531,"네네~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",541,"네네~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",551,"네네~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",561,"네네~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- 치치
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",621,"네네~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",631,"네네~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",641,"네네~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",651,"네네~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",661,"네네~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 앵앵
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",721,"네네~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",731,"네네~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",741,"네네~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",751,"네네~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",761,"네네~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 미르
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",821,"네네~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",831,"네네~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",841,"네네~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",851,"네네~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",861,"네네~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 니놈
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",921,"네네~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",931,"네네~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",941,"네네~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",951,"네네~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",961,"네네~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end


	else
		return 0


	end




end


function NPC_QUEST_687(cnum, reqNumber)

-- 다음부터는 밸런스에 관계된 것들 수집 아이템의 개수, 수집 아이템의 idx 등은 변수를 사용하자. 후에 밸런싱 시 매우 불편하다.
-- 110308 부유석 수집 요구 개수 10개 확정, 마스터 헨치 성장 요구 레벨 150 확정, 배틀 헨치 지급 레벨 155 확정


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 헨치 교환권이 없고, 인벤토리에 헨치도 없을 때(헨치 배틀 상태는 체크하지 않음)
					
				return 2,0,"자~스페셜한 코어를 팝니다~@활~활~! 불타오르는 불뿔콩!@똥개그의 달인 마시마로!@일자무식 깜부!@믹마 상점에서 판매하는 '헨치 교환권' 구입하여 가져오시면 좋은 녀석으로 바꿔 드립니다!!",1111,"이런게 있었네요..!"
			else -- 헨치 교환권이 없고, 인벤토리에 헨치가 있을 때
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		else -- 헨치 교환권이 있을 때
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- 헨치교환권이 있고, 인벤토리에 헨치가 없을 때(헨치 배틀 상태는 체크하지 않음)
				return 5,0,"어서옵쇼~!@헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"
			else -- 헨치교환권이 있고, 인벤토리에 헨치가 있을 때(헨치 배틀 상태는 체크하지 않음)
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"아! 참고로!@[마스터 헨치 퀘스트]@[배틀 헨치 변신 퀘스트]는@저에게 보여줄 마스터 헨치를 인벤토리에 넣고 오십쇼!"


	elseif req == 112 then
		return 5,0,"헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"


	elseif req == 113 then
		return 5,0,"스페셜한 헨치를 키우고 계시는군요!!@어떤 녀석의 레벨을 올려 오셨나요?",10,"치치",11,"앵앵",16,"미르",17,"니놈"





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"어떤 마스터 헨치를 배틀헨치로 변신을 시키고 싶은갑쇼?",18,"치치",19,"앵앵",20,"미르",21,"니놈"


----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- 레벨 130 이상의 치치가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 645) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개",1056,"네~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"치치를 레벨 150까지 키워왔는갑쇼?",1026,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 치치가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 치치가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 치치의 잠재력을 보고 싶지 않은갑쇼?",1006,"보고싶어요!"
        end
			end
    else -- 치치가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1006 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 치치를 가지고 계신뎁쇼??",1026,"네~!"
    else
      return 2,0,"자~치치가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..치치 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1016,"네"
    end   

  elseif req == 1016 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- 치치 1차 퀘스트 창
    return 2,0,"그럼 치치를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1026 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 644, 2) -- 치치 1차 퀘스트 종료
          EndQuest(cnum, 199) -- 치치 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 치치가 엄청난 힘을 내고 있는 뎁쇼? 이제 치치의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1036,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1036 then -- 치치 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1046,"네~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 200) -- 치치 2차 퀘스트 창
    return 1,0,"참고로 [오래된 용뼈], [작은 머리뿔], [큰 머리뿔]은 초, 중, 고 레벨의 드래곤 몬스터에게서 얻을 수 있습죠."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1066,"[붉은 빛 부유석 결정체]",1076,"[회색 빛 부유석 결정체]",1086,"[파란 빛 부유석 결정체]",1096,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 치치를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 치치를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 치치 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 레벨 150 이상의 치치가 있는지 검사
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- 레벨 130 이상의 앵앵이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 650) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개",1156,"네~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"앵앵을 레벨 150까지 키워왔는갑쇼?",1126,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 앵앵이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 앵앵이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 앵앵의 잠재력을 보고 싶지 않은갑쇼?",1106,"보고싶어요!"
        end
			end
    else -- 앵앵이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1106 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 앵앵을 가지고 계신뎁쇼??",1126,"네~!"
    else
      return 2,0,"자~앵앵이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..앵앵 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1116,"네"
    end   

  elseif req == 1116 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
    return 2,0,"그럼 앵앵을 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1126 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 649, 2) -- 앵앵 1차 퀘스트 종료
          EndQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 앵앵이 엄청난 힘을 내고 있는 뎁쇼? 이제 앵앵의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1136,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1136 then -- 앵앵 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1146,"네~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 202) -- 앵앵 2차 퀘스트 창
    return 1,0,"참고로 [새의 부리], [노란 새털], [빛나는 새털]은 초, 중, 고 레벨의 새 몬스터에게서 얻을 수 있습죠."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1166,"[붉은 빛 부유석 결정체]",1176,"[회색 빛 부유석 결정체]",1186,"[파란 빛 부유석 결정체]",1196,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 앵앵을 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 앵앵을 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 앵앵 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 레벨 150 이상의 앵앵이 있는지 검사
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- 레벨 130 이상의 미르가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 655) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개",1256,"네~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"미르를 레벨 150까지 키워왔는갑쇼?",1226,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 미르가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 미르가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 미르의 잠재력을 보고 싶지 않은갑쇼?",1206,"보고싶어요!"
        end
			end
    else -- 미르가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1206 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 미르를 가지고 계신뎁쇼??",1226,"네~!"
    else
      return 2,0,"자~미르가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..미르 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1216,"네"
    end   

  elseif req == 1216 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- 미르 1차 퀘스트 창
    return 2,0,"그럼 미르를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1226 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 654, 2) -- 미르 1차 퀘스트 종료
          EndQuest(cnum, 203) -- 미르 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 미르가 엄청난 힘을 내고 있는 뎁쇼? 이제 미르의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1236,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1236 then -- 미르 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1246,"네~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 204) -- 미르 2차 퀘스트 창
    return 1,0,"참고로 [짐승의 털], [낡은 가죽], [온전한 가죽]은 초, 중, 고 레벨의 짐승 몬스터에게서 얻을 수 있습죠."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1266,"[붉은 빛 부유석 결정체]",1276,"[회색 빛 부유석 결정체]",1286,"[파란 빛 부유석 결정체]",1296,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 미르를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 미르를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 미르 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 레벨 150 이상의 미르가 있는지 검사
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- 레벨 130 이상의 니놈이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 660) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개",1356,"네~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"니놈를 레벨 150까지 키워왔는갑쇼?",1326,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 니놈이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 니놈이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 니놈의 잠재력을 보고 싶지 않은갑쇼?",1306,"보고싶어요!"
        end
			end
    else -- 니놈이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1306 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 니놈를 가지고 계신뎁쇼??",1326,"네~!"
    else
      return 2,0,"자~니놈이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..니놈 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1316,"네"
    end   

  elseif req == 1316 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- 니놈 1차 퀘스트 창
    return 2,0,"그럼 니놈를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1326 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 659, 2) -- 니놈 1차 퀘스트 종료
          EndQuest(cnum, 205) -- 니놈 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 니놈이 엄청난 힘을 내고 있는 뎁쇼? 이제 니놈의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1336,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1336 then -- 니놈 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1346,"네~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 206) -- 니놈 2차 퀘스트 창
    return 1,0,"참고로 [고철 조각], [나사 조각], [나사 한줌]은 초, 중, 고 레벨의 메탈 몬스터에게서 얻을 수 있습죠."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1366,"[붉은 빛 부유석 결정체]",1376,"[회색 빛 부유석 결정체]",1386,"[파란 빛 부유석 결정체]",1396,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 니놈를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 니놈를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 니놈 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 레벨 150 이상의 니놈이 있는지 검사
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"스페셜한 헨치 교환권이 있군요!@자자~ 마스터 헨치 중에@어떤 녀석의 교환권인가요?",6,"치치 헨치 교환권",7,"앵앵 헨치 교환권",8,"미르 헨치 교환권",9,"니놈 헨치 교환권"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 5,0,"불뿔콩! 좋은 녀석이지요~@레벨을 알려주시구려~",12,"불뿔콩 교환권(Lv.40)",13,"불뿔콩 교환권(Lv.60)",14,"불뿔콩 교환권(Lv.80)",15,"불뿔콩 교환권(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"마시마로! 좋은 녀석이지요~@레벨을 알려주시구려~",22,"마시마로 교환권(Lv.40)",23,"마시마로 교환권(Lv.60)",24,"마시마로 교환권(Lv.80)",25,"마시마로 교환권(Lv.100)",26,"마시마로 교환권(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"깜부! 좋은 녀석이지요~@레벨을 알려주시구려~",52,"깜부 교환권(Lv.40)",53,"깜부 교환권(Lv.60)",54,"깜부 교환권(Lv.80)",55,"깜부 교환권(Lv.100)",56,"깜부 교환권(Lv.120)"


		end

-------------------------------------------- 마스터 헨치 교환권 검사 및 레벨 선택

	elseif req == 6 then  -- 치치
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"치치! 좋은 녀석이지요~@레벨을 알려주시구려~",62,"치치 교환권(Lv.40)",63,"치치 교환권(Lv.60)",64,"치치 교환권(Lv.80)",65,"치치 교환권(Lv.100)",66,"치치 교환권(Lv.120)"


		end

	elseif req == 7 then -- 앵앵
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"앵앵! 좋은 녀석이지요~@레벨을 알려주시구려~",72,"앵앵 교환권(Lv.40)",73,"앵앵 교환권(Lv.60)",74,"앵앵 교환권(Lv.80)",75,"앵앵 교환권(Lv.100)",76,"앵앵 교환권(Lv.120)"


		end


	elseif req == 8 then  -- 미르
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"미르! 좋은 녀석이지요~@레벨을 알려주시구려~",82,"미르 교환권(Lv.40)",83,"미르 교환권(Lv.60)",84,"미르 교환권(Lv.80)",85,"미르 교환권(Lv.100)",86,"미르 교환권(Lv.120)"


		end

	elseif req == 9 then -- 니놈
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"니놈! 좋은 녀석이지요~@레벨을 알려주시구려~",92,"니놈 교환권(Lv.40)",93,"니놈 교환권(Lv.60)",94,"니놈 교환권(Lv.80)",95,"니놈 교환권(Lv.100)",96,"니놈 교환권(Lv.120)"


		end



------------
-- 치치
------------



	elseif req == 10 then -- 치치 장코로 교환
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 치치를 받았는지 알려주시구려~~",1001,"치치(Lv.40)",1002,"치치(Lv.60)",1003,"치치(Lv.80)",1004,"치치(Lv.100)",1005,"치치(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"음?! 치치의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"음?! 치치의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"음?! 치치의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"음?! 치치의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"음?! 치치의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end



	elseif req == 100 then -- 치치 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- 앵앵
------------


	elseif req == 11 then -- 앵앵 장코로 교환
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"음?! 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 앵앵을 받았는지 알려주시구려~~",1011,"앵앵(Lv.40)",1012,"앵앵(Lv.60)",1013,"앵앵(Lv.80)",1014,"앵앵(Lv.100)",1015,"앵앵(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end


	elseif req == 101 then -- 앵앵 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- 미르
------------
	elseif req == 16 then -- 미르 장코로 교환
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 미르를 받았는지 알려주시구려~~",1021,"미르(Lv.40)",1022,"미르(Lv.60)",1023,"미르(Lv.80)",1024,"미르(Lv.100)",1025,"미르(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"음?! 미르의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"음?! 미르의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"음?! 미르의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"음?! 미르의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"음?! 미르의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end



	elseif req == 102 then -- 미르 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- 니놈
------------
	elseif req == 17 then -- 니놈 장코로 교환
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"음?! 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 니놈을 받았는지 알려주시구려~~",1031,"니놈(Lv.40)",1032,"니놈(Lv.60)",1033,"니놈(Lv.80)",1034,"니놈(Lv.100)",1035,"니놈(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 니놈을 데리고 오면 안되는 뎁쇼..니놈을 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"음?! 니놈의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"음?! 니놈의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"음?! 니놈의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"음?! 니놈의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"음?! 니놈의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end




	elseif req == 103 then -- 니놈 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--불뿔콩
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",32,"네네~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",33,"네네~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",34,"네네~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",35,"네네~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--마시마로
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",42,"네네~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",43,"네네~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",44,"네네~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",45,"네네~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",46,"네네~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--깜부
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",521,"네네~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",531,"네네~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",541,"네네~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",551,"네네~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",561,"네네~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- 치치
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",621,"네네~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",631,"네네~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",641,"네네~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",651,"네네~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",661,"네네~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 앵앵
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",721,"네네~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",731,"네네~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",741,"네네~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",751,"네네~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",761,"네네~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 미르
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",821,"네네~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",831,"네네~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",841,"네네~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",851,"네네~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",861,"네네~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 니놈
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",921,"네네~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",931,"네네~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",941,"네네~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",951,"네네~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",961,"네네~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end


	else
		return 0


	end




end

function NPC_QUEST_688(cnum, reqNumber)

-- 다음부터는 밸런스에 관계된 것들 수집 아이템의 개수, 수집 아이템의 idx 등은 변수를 사용하자. 후에 밸런싱 시 매우 불편하다.
-- 110308 부유석 수집 요구 개수 10개 확정, 마스터 헨치 성장 요구 레벨 150 확정, 배틀 헨치 지급 레벨 155 확정


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 헨치 교환권이 없고, 인벤토리에 헨치도 없을 때(헨치 배틀 상태는 체크하지 않음)
					
				return 2,0,"자~스페셜한 코어를 팝니다~@활~활~! 불타오르는 불뿔콩!@똥개그의 달인 마시마로!@일자무식 깜부!@믹마 상점에서 판매하는 '헨치 교환권' 구입하여 가져오시면 좋은 녀석으로 바꿔 드립니다!!",1111,"이런게 있었네요..!"
			else -- 헨치 교환권이 없고, 인벤토리에 헨치가 있을 때
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		else -- 헨치 교환권이 있을 때
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- 헨치교환권이 있고, 인벤토리에 헨치가 없을 때(헨치 배틀 상태는 체크하지 않음)
				return 5,0,"어서옵쇼~!@헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"
			else -- 헨치교환권이 있고, 인벤토리에 헨치가 있을 때(헨치 배틀 상태는 체크하지 않음)
				return 4,0,"어서옵쇼~!@무슨 볼 일 인가요?",112,"헨치 교환권이 있어요",113,"마스터 헨치 퀘스트",114,"배틀 헨치 변신 퀘스트"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"아! 참고로!@[마스터 헨치 퀘스트]@[배틀 헨치 변신 퀘스트]는@저에게 보여줄 마스터 헨치를 인벤토리에 넣고 오십쇼!"


	elseif req == 112 then
		return 5,0,"헨치 교환권이 있군요!@자자~ 어떤 녀석의 교환권인가요?",2,"불뿔콩 헨치 교환권",3,"마시마로 헨치 교환권",4,"깜부 헨치 교환권",5,"마스터 헨치 교환권"


	elseif req == 113 then
		return 5,0,"스페셜한 헨치를 키우고 계시는군요!!@어떤 녀석의 레벨을 올려 오셨나요?",10,"치치",11,"앵앵",16,"미르",17,"니놈"





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"어떤 마스터 헨치를 배틀헨치로 변신을 시키고 싶은갑쇼?",18,"치치",19,"앵앵",20,"미르",21,"니놈"


----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- 레벨 130 이상의 치치가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 645) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개",1056,"네~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"치치를 레벨 150까지 키워왔는갑쇼?",1026,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 치치가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 치치가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 치치의 잠재력을 보고 싶지 않은갑쇼?",1006,"보고싶어요!"
        end
			end
    else -- 치치가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1006 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 치치를 가지고 계신뎁쇼??",1026,"네~!"
    else
      return 2,0,"자~치치가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..치치 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1016,"네"
    end   

  elseif req == 1016 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- 치치 1차 퀘스트 창
    return 2,0,"그럼 치치를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1026 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 치치가 있을 때

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- 인벤 체크
          return 1,0,"치치가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 644, 2) -- 치치 1차 퀘스트 종료
          EndQuest(cnum, 199) -- 치치 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 치치가 엄청난 힘을 내고 있는 뎁쇼? 이제 치치의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1036,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1036 then -- 치치 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1046,"네~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 200) -- 치치 2차 퀘스트 창
    return 1,0,"참고로 [오래된 용뼈], [작은 머리뿔], [큰 머리뿔]은 초, 중, 고 레벨의 드래곤 몬스터에게서 얻을 수 있습죠."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1066,"[붉은 빛 부유석 결정체]",1076,"[회색 빛 부유석 결정체]",1086,"[파란 빛 부유석 결정체]",1096,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 647, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 치치의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1100,"치치를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 치치를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 치치를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 치치 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 치치 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- 레벨 150 이상의 치치가 있는지 검사
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"치치의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- 레벨 130 이상의 앵앵이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 650) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개",1156,"네~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"앵앵을 레벨 150까지 키워왔는갑쇼?",1126,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 앵앵이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 앵앵이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 앵앵의 잠재력을 보고 싶지 않은갑쇼?",1106,"보고싶어요!"
        end
			end
    else -- 앵앵이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1106 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 앵앵을 가지고 계신뎁쇼??",1126,"네~!"
    else
      return 2,0,"자~앵앵이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..앵앵 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1116,"네"
    end   

  elseif req == 1116 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
    return 2,0,"그럼 앵앵을 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1126 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 앵앵는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 앵앵이 있을 때

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- 인벤 체크
          return 1,0,"앵앵이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 649, 2) -- 앵앵 1차 퀘스트 종료
          EndQuest(cnum, 201) -- 앵앵 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 앵앵이 엄청난 힘을 내고 있는 뎁쇼? 이제 앵앵의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1136,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1136 then -- 앵앵 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1146,"네~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 202) -- 앵앵 2차 퀘스트 창
    return 1,0,"참고로 [새의 부리], [노란 새털], [빛나는 새털]은 초, 중, 고 레벨의 새 몬스터에게서 얻을 수 있습죠."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1166,"[붉은 빛 부유석 결정체]",1176,"[회색 빛 부유석 결정체]",1186,"[파란 빛 부유석 결정체]",1196,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 652, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 앵앵의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1200,"앵앵을 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 앵앵을 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 앵앵을 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 앵앵 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 앵앵 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- 레벨 150 이상의 앵앵이 있는지 검사
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"앵앵의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- 레벨 130 이상의 미르가 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 655) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개",1256,"네~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"미르를 레벨 150까지 키워왔는갑쇼?",1226,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 미르가 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 미르가 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 미르의 잠재력을 보고 싶지 않은갑쇼?",1206,"보고싶어요!"
        end
			end
    else -- 미르가 배틀 상태일 경우
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1206 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 미르를 가지고 계신뎁쇼??",1226,"네~!"
    else
      return 2,0,"자~미르가 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..미르 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1216,"네"
    end   

  elseif req == 1216 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- 미르 1차 퀘스트 창
    return 2,0,"그럼 미르를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1226 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 미르가 있을 때

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- 인벤 체크
          return 1,0,"미르가 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 654, 2) -- 미르 1차 퀘스트 종료
          EndQuest(cnum, 203) -- 미르 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 미르가 엄청난 힘을 내고 있는 뎁쇼? 이제 미르의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1236,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1236 then -- 미르 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1246,"네~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 204) -- 미르 2차 퀘스트 창
    return 1,0,"참고로 [짐승의 털], [낡은 가죽], [온전한 가죽]은 초, 중, 고 레벨의 짐승 몬스터에게서 얻을 수 있습죠."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1266,"[붉은 빛 부유석 결정체]",1276,"[회색 빛 부유석 결정체]",1286,"[파란 빛 부유석 결정체]",1296,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 657, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 미르의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1300,"미르를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 미르를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 미르를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 미르 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 미르 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- 레벨 150 이상의 미르가 있는지 검사
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"미르의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------

----------- 퀘스트를 진행 중일 시 ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- 레벨 130 이상의 니놈이 있나 검사 후 있으면 레벨 150까지 키워오라는 퀘스트 제공

	  if GetSwitchCount(cnum, 660) > 1 then -- 2차 퀘스트를 진행 중인지 체크
			return 2,0,"가져오라는 재료들은 가져왔는갑쇼? [부유석 결정체] 10개, [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개",1356,"네~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1차 퀘스트를 진행 중인지 체크
			return 2,0,"니놈를 레벨 150까지 키워왔는갑쇼?",1326,"네~!"
		end


	--------- 1차 퀘스트를 시작하지 않았을 시 -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 130이 되면 저에게 다시오십쇼! 마스터 헨치는 놀라운 잠재력이 있습죠! 한번 키워볼만한 합니다요!"
        else
          return 2,0,"오~그 귀여운 니놈이 엄청난 파워를 내는 것이 느껴지는뎁쇼? 자 이제 니놈이 숨겨진 잠재력을 발휘할 때가 온 것 같은뎁쇼? 니놈의 잠재력을 보고 싶지 않은갑쇼?",1306,"보고싶어요!"
        end
			end
    else -- 니놈이 배틀 상태일 경우
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end


  elseif req == 1306 then -- 배틀 헨치 1차 퀘스트
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 인벤 체크
			return 2,0,"벌써 레벨 150이 넘는 니놈를 가지고 계신뎁쇼??",1326,"네~!"
    else
      return 2,0,"자~니놈이 레벨 130이 되었다고는 하지만 아직 숨겨진 잠재력을 폭발시킬 레벨이 안되는 뎁쇼..니놈 레벨을 150까지 키워오면 놀라운 일이 벌어질 것인데 그렇게 해보고 싶은 갑쇼?",1316,"네"
    end   

  elseif req == 1316 then -- 배틀 헨치 1차 퀘스트 시작
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- 니놈 1차 퀘스트 창
    return 2,0,"그럼 니놈를 레벨 150까지 키워오시면 되겠는뎁쇼? 기다리겠습니다요!",51,"네"

-------------- 1차 퀘스트 수령 완료 -------------------------------


  elseif req == 1326 then -- 배틀 헨치 레벨 150 검사
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- 배틀 상태 체크

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- 인벤 체크
				return 2,0,"음?! 니놈는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else -- 니놈이 있을 때

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- 인벤 체크
          return 1,0,"니놈이 레벨 150이 되어야 숨겨진 잠재력을 끌어낼 수 있는뎁쇼? 레벨 150까지 성장 시켜오십쇼!"
        else
          SetSwitchCount(cnum, 659, 2) -- 니놈 1차 퀘스트 종료
          EndQuest(cnum, 205) -- 니놈 1차 퀘스트 창
          return 2,0,"대단한뎁쇼? 니놈이 엄청난 힘을 내고 있는 뎁쇼? 이제 니놈의 잠재력을 끌어낼 촉매제! 특별한 재료가 필요한뎁쇼!",1336,"어떤 재료요?"
        end

			end

    else
			return 2,0,"아~! 이렇게 니놈를 데리고 오면 안되는 뎁쇼..니놈를 인벤토리에 넣고 오십쇼!",51,"네"
    end

  elseif req == 1336 then -- 니놈 2차 퀘스트 시작
    return 2,0,"엘리시온에서만 난다는 특별한 물질 [부유석 결정체] 10개와 [고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있어야 하는뎁쇼! [부유석 결정체]는 아무 종류나 10개만 있으면 되는뎁쇼. 구해올 수 있겠습죠?",1346,"네~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2차 퀘스트 시작
    StartQuest(cnum, 206) -- 니놈 2차 퀘스트 창
    return 1,0,"참고로 [고철 조각], [나사 조각], [나사 한줌]은 초, 중, 고 레벨의 메탈 몬스터에게서 얻을 수 있습죠."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 있는지 확인해보셔야 되겠는뎁쇼?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[부유석 결정체] 10개가 없는 것 같은뎁쇼?"
    else
      return 5,0,"무슨 색 [부유석 결정체] 10개를 모아오셨습죠?",1366,"[붉은 빛 부유석 결정체]",1376,"[회색 빛 부유석 결정체]",1386,"[파란 빛 부유석 결정체]",1396,"[황토 빛 부유석 결정체]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[붉은 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 1) -- 붉은 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[회색 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 2) -- 회색 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[파란 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 3) -- 파란 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[황토 빛 부유석 결정체] 10개가 없는뎁쇼?"
    else
      SetSwitchCount(cnum, 662, 4) -- 황토 빛 부유석 결정체
      return 2,0,"이제 재료가 다 모였으니 니놈의 잠재력을 끌어내어 배틀헨치로 변신을 시켜주겠습죠!",1400,"니놈를 배틀헨치로 변신!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- 니놈를 배틀헨치로 ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"엥? 방금까지 있던 재료가 어디로 갔는뎁쇼? 저를 속이면 안되는뎁쇼?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- 배틀 상태 체크
      return 1,0,"이렇게 니놈를 데리고 있으면 안되는 뎁쇼!? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- 같은 idx를 사용하는 헨치가 두 마리 이상 있는지 체크
      return 1,0,"변신시킬 니놈 한 마리만 저에게 데려와야 하는뎁쇼? 저에게 보여줄 니놈 한 마리만 인벤토리에 넣어오십쇼!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- 레벨 150 이상의 니놈이 있는지 검사
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"재료 아이템이 모두 있는 것 맞습죠? 한번 확인해 보십쇼!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"니놈의 숨겨진 놀라운 능력을 끌어내기에 성공했습니다요!",9999,"고맙습니다!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- 배틀 헨치 -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"스페셜한 헨치 교환권이 있군요!@자자~ 마스터 헨치 중에@어떤 녀석의 교환권인가요?",6,"치치 헨치 교환권",7,"앵앵 헨치 교환권",8,"미르 헨치 교환권",9,"니놈 헨치 교환권"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 5,0,"불뿔콩! 좋은 녀석이지요~@레벨을 알려주시구려~",12,"불뿔콩 교환권(Lv.40)",13,"불뿔콩 교환권(Lv.60)",14,"불뿔콩 교환권(Lv.80)",15,"불뿔콩 교환권(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"마시마로! 좋은 녀석이지요~@레벨을 알려주시구려~",22,"마시마로 교환권(Lv.40)",23,"마시마로 교환권(Lv.60)",24,"마시마로 교환권(Lv.80)",25,"마시마로 교환권(Lv.100)",26,"마시마로 교환권(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"깜부! 좋은 녀석이지요~@레벨을 알려주시구려~",52,"깜부 교환권(Lv.40)",53,"깜부 교환권(Lv.60)",54,"깜부 교환권(Lv.80)",55,"깜부 교환권(Lv.100)",56,"깜부 교환권(Lv.120)"


		end

-------------------------------------------- 마스터 헨치 교환권 검사 및 레벨 선택

	elseif req == 6 then  -- 치치
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"치치! 좋은 녀석이지요~@레벨을 알려주시구려~",62,"치치 교환권(Lv.40)",63,"치치 교환권(Lv.60)",64,"치치 교환권(Lv.80)",65,"치치 교환권(Lv.100)",66,"치치 교환권(Lv.120)"


		end

	elseif req == 7 then -- 앵앵
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"앵앵! 좋은 녀석이지요~@레벨을 알려주시구려~",72,"앵앵 교환권(Lv.40)",73,"앵앵 교환권(Lv.60)",74,"앵앵 교환권(Lv.80)",75,"앵앵 교환권(Lv.100)",76,"앵앵 교환권(Lv.120)"


		end


	elseif req == 8 then  -- 미르
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"미르! 좋은 녀석이지요~@레벨을 알려주시구려~",82,"미르 교환권(Lv.40)",83,"미르 교환권(Lv.60)",84,"미르 교환권(Lv.80)",85,"미르 교환권(Lv.100)",86,"미르 교환권(Lv.120)"


		end

	elseif req == 9 then -- 니놈
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것@같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 6,0,"니놈! 좋은 녀석이지요~@레벨을 알려주시구려~",92,"니놈 교환권(Lv.40)",93,"니놈 교환권(Lv.60)",94,"니놈 교환권(Lv.80)",95,"니놈 교환권(Lv.100)",96,"니놈 교환권(Lv.120)"


		end



------------
-- 치치
------------



	elseif req == 10 then -- 치치 장코로 교환
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"음?! 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 치치를 받았는지 알려주시구려~~",1001,"치치(Lv.40)",1002,"치치(Lv.60)",1003,"치치(Lv.80)",1004,"치치(Lv.100)",1005,"치치(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 치치를 데리고 오면 안되는 뎁쇼..치치를 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"음?! 치치의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"음?! 치치의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"음?! 치치의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"음?! 치치의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"음?! 그런 치치는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"치치가 한 마리가 아닌뎁쇼? 저에게 교환할 치치 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 치치 한마리만!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"음?! 치치의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 치치를 업그레이드! 뉴치치로!!",100,"네"
		end



	elseif req == 100 then -- 치치 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- 앵앵
------------


	elseif req == 11 then -- 앵앵 장코로 교환
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"음?! 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 앵앵을 받았는지 알려주시구려~~",1011,"앵앵(Lv.40)",1012,"앵앵(Lv.60)",1013,"앵앵(Lv.80)",1014,"앵앵(Lv.100)",1015,"앵앵(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 앵앵을 데리고 오면 안되는 뎁쇼..앵앵을 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"음?! 그런 앵앵은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"앵앵이 한 마리가 아닌뎁쇼? 저에게 교환할 앵앵 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 앵앵 한 마리만!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"음?! 앵앵의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 앵앵을 업그레이드! 뉴앵앵으로!!",101,"네"
		end


	elseif req == 101 then -- 앵앵 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- 미르
------------
	elseif req == 16 then -- 미르 장코로 교환
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"음?! 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 미르를 받았는지 알려주시구려~~",1021,"미르(Lv.40)",1022,"미르(Lv.60)",1023,"미르(Lv.80)",1024,"미르(Lv.100)",1025,"미르(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 미르를 데리고 오면 안되는 뎁쇼..미르를 인벤토리에 넣고 오십쇼!",51,"네"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"음?! 미르의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"음?! 미르의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"음?! 미르의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"음?! 미르의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"음?! 그런 미르는 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"미르가 한 마리가 아닌뎁쇼? 저에게 교환할 미르 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 미르 한 마리만!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"음?! 미르의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 미르를 업그레이드! 뉴미르로!!",102,"네"
		end



	elseif req == 102 then -- 미르 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- 니놈
------------
	elseif req == 17 then -- 니놈 장코로 교환
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"음?! 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
			else
				return 6,0,"처음 몇 레벨의 니놈을 받았는지 알려주시구려~~",1031,"니놈(Lv.40)",1032,"니놈(Lv.60)",1033,"니놈(Lv.80)",1034,"니놈(Lv.100)",1035,"니놈(Lv.120)"
			end
		else
			return 2,0,"아~! 이렇게 니놈을 데리고 오면 안되는 뎁쇼..니놈을 인벤토리에 넣고 오십쇼!",51,"네"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"음?! 니놈의 레벨을 50까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"음?! 니놈의 레벨을 70까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"음?! 니놈의 레벨을 90까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"음?! 니놈의 레벨을 110까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"음?! 그런 니놈은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"니놈이 한 마리가 아닌뎁쇼? 저에게 교환할 니놈 한 마리만 데리고 다시 오십쇼!",51,"네 교환할 니놈 한 마리만!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"음?! 니놈의 레벨을 130까지 만들고 다시 오십쇼! 아직 모자르네요!",51,"네"
		else
			return 2,0,"훌륭한데요? 자 그럼 니놈을 업그레이드! 뉴니놈으로!!",103,"네"
		end




	elseif req == 103 then -- 니놈 교환
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--불뿔콩
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",32,"네네~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",33,"네네~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",34,"네네~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",35,"네네~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--마시마로
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",42,"네네~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",43,"네네~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",44,"네네~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",45,"네네~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",46,"네네~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--깜부
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",521,"네네~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",531,"네네~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",541,"네네~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",551,"네네~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",561,"네네~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- 치치
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",621,"네네~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",631,"네네~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",641,"네네~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",651,"네네~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",661,"네네~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"한가지 더!@지급 받은 치치의 레벨에서@10이상 성장시켜오면 제가 뉴치치로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 앵앵
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",721,"네네~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",731,"네네~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",741,"네네~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",751,"네네~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",761,"네네~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"한가지 더!@지급 받은 앵앵의 레벨에서@10이상 성장시켜오면 제가 뉴앵앵으로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 미르
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",821,"네네~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",831,"네네~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",841,"네네~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",851,"네네~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",861,"네네~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"한가지 더!@지급 받은 미르의 레벨에서@10이상 성장시켜오면 제가 뉴미르로 업그레이드 해 드리지요!",51,"네~"
		end



-------------------------------------
-- 니놈
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",921,"네네~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",931,"네네~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",941,"네네~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",951,"네네~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"음?! 그런 교환권은 없는 것 같은뎁쇼?",51,"그런가요? 다시 볼게요."


		else
			return 2,0,"자~ 여기 있습니다!@이 녀석 성능이 좋으니~@자알~ 키워보세요~",961,"네네~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"핸치 인벤토리에 빈 공간이 없습니다."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"한가지 더!@지급 받은 니놈의 레벨에서@10이상 성장시켜오면 제가 뉴니놈으로 업그레이드 해 드리지요!",51,"네~"
		end


	else
		return 0


	end




end


