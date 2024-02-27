
---------------------------------워프 NPC------------------------------------
function NPC_QUEST_1584(cnum, reqNumber) --[2011할로윈이벤트]블러드랜턴1,좌표-- 마지리타 워프NPC
req=reqNumber
if req == 1 then
	return 2,0, "후후후, 나에게 사탕을 받고 싶거든 제대로 복장을 갖추고 오도록 하게!",2,"그게 무슨말이야?"


elseif req == 2 then
	return 2,0, "지금 루디스 마을에서는 할로윈 축제를 하고 있다네! 잘 모르겠거든 우선 루디스 마을로 이동부터 하게.",3,"이동!"


elseif req == 3 then

	MoveZone(cnum,67,253) --이벤트존 루디스로 이동



end

end

---------------------------------워프 NPC------------------------------------
function NPC_QUEST_1585(cnum, reqNumber) --[2011할로윈이벤트]블러드랜턴2,좌표-- 메크리타 워프NPC
req=reqNumber
if req == 1 then
	return 2,0, "후후후, 나에게 사탕을 받고 싶거든 제대로 복장을 갖추고 오도록 하게!",2,"그게 무슨말이야?"

elseif req == 2 then
	return 2,0, "지금 루디스 마을에서는 할로윈 축제를 하고 있다네! 잘 모르겠거든 우선 루디스 마을로 이동부터 하게.",3,"이동!"


elseif req == 3 then

	MoveZone(cnum,67,253) --이벤트존 루디스로 이동



end

end

---------------------------------블러디랜턴 NPC------------------------------------
function NPC_QUEST_1586(cnum, reqNumber) --[2011할로윈이벤트]블러디랜턴3,좌표--

req=reqNumber

if req == 1 then
	if GetItemCount(cnum, 8835,0) < 10 then
	return 5,0, "오, 새로 온 분이구만! @마침 마녀협회에서 할로윈 파티를 @개최하였는데, 타이밍이 좋구만!",111,"이벤트 진행방법!",2,"마을로 돌아갈래요",3,"여기서 뭐 하고 계세요?",4,"할로윈 파티요?",5,"마녀협회가 뭔가요?"

	else
	return 6,0, "오, 새로 온 분이구만! @마침 마녀협회에서 할로윈 파티를 @개최하였는데, 타이밍이 좋구만!",111,"이벤트 진행방법!",6,"호박껍질과 교환!",2,"마을로 돌아갈래요",3,"여기서 뭐 하고 계세요?",4,"할로윈 파티요?"

	end

elseif req == 111 then
	return 7,0, "할로윈 이벤트 진행에 대해 묻고싶은걸 선택하시게.",12,"꼬마아이는 어디에 있나요?",13,"마녀는 어디에 있나요?",14,"변신갑옷 제작은 어디서 하나요?",15,"사탕얻는 방법좀 알려주세요.",16,"특별한 사탕? 호박 과자?",17,"갑옷제작 재료 얻는 방법"


elseif req == 2 then

	return 3,0, "돌아갈 마을을 선택하게.",7,"마지리타로 이동",8,"메크리타로 이동"


elseif req == 3 then

	return 2,0, "아아.. @'할로윈'을 맞이하여 '마녀협회에서 주최한 파티'에 참여하려고 말이지..@사람들이 많이 다닐법한 워프존에 위치해 있는데, 루디스라 그런가? 사람들이 별로 안오지 뭔가.. @@마녀가 사탕을 모아오면 좋은것을 준다고 했는데..",9,"사탕?보상?"


elseif req == 4 then

	return 1,0, "그래. @할로윈을 대표하는 '잭 오랜턴' 과 같은 악마로 변장하여 이웃에 들러 사탕과 과자를 얻는 날이지. @@참, 내 정신좀 봐. 서쪽 나무 뒤에 한 '꼬마아이'(81.157)'가 있는데, 아무도 챙겨주질 않더군. 시간이 되면 한 번 가보게나. 울음소리가 들려서 걱정이 되는군.."






elseif req == 5 then
	return 1,0, "'마녀협회' 란, 할로윈 파티 개최를 한 곳으로, 이번에 거기서 한 '수습마녀'가 이곳으로 오게되었다지. 악마계열인 마녀도 역시 할로윈 파티를 많이 기대했으니 우리들이 파티하는것을 돕기 위해 온거라 생각하네~지나가면서 봤는데 잡화점(111.85) 근처에 있더구만."


elseif req == 6 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "이런 축제날에는 가볍게 하고 다녀야지~가방이 무겁지 않은가?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 8837, 1)
	return 1,0, "자 여기! @@@@@@'블러디랜턴3 에게 할로윈사탕 10개를 주고 호박껍질 1개를 받았습니다..'"
	end


elseif req == 7 then

	MoveZone(cnum, 57, 253)

elseif req == 8 then


	MoveZone(cnum, 59, 253)

elseif req == 9 then

	return 2,0, "할로윈때는 '변장'을 하고 이웃에게 '사탕'이나 과자를 얻어오는것은 알고있지? @마녀들이 사탕 개수에 따른 보상을 내걸었지 뭔가. 나도 탐나는 아이템이 있어서 이렇게 모으고 있지. @참, 당신도 이벤트 참여할건가? 아니면 필요없나?",10,"음.."

elseif req == 10 then
	return 1,0, "어찌됐든, 그냥 달라는 말은 안 하겠네. @@'할로윈 사탕' 10개를 내게 주면 호박껍질을 주겠네. @잭오랜턴 갑옷이나 호박과자를 만드는데 사용돼서 몇몇 히어로들이 그걸 모으더구만.. 몬스터를 잡으면 나오기도 하지만 확률이 낮아서 그런가?@마을 사람들 중 나같은 사람이 꽤 있을거야~"


elseif req == 12 then
	return 1,0, "'꼬마아이(81.157)' 서쪽방향으로 몇 보 가면 나무 뒤에 숨어서 울고 있다네.. @바로 이 근처니 찾기 쉬울걸세.. @꼬마아이는 또래아이들과 어울리지 못해서 울고있는것 같네. @사탕도 없지, 변신갑옷도 없지..@시간이 되면 도와주기 바라네..@참, 꼬마아이는 잭오랜턴 변신갑옷을 갖고싶어한다지?@소심해서 그냥 부탁은 못 하니 히어로씨가 잭오랜턴 갑옷을 입고 가서 말을 걸면 부탁을 할거야."

elseif req == 13 then
	return 1,0, "마녀? 아아, '수습마녀(111.85)'는 '잡화점'으로 가면 바로 보일걸세. @잡화점 상인 좌측을 보면 바로 지팡이를 든 젊은 마녀를 볼 수 있을걸세. @수습마녀는 마법으로 할로윈 사탕을 2배로 불려주거나 사탕 수집이벤트를 통해 개수에 따라 보상을 지급하기도 하지."

elseif req == 14 then
	return 1,0, "'변신갑옷 제작(229.35)' 대장장이는 '무기/방어/악세서리' 점에 위치해 있다네. @우측에 혼자 떨어져 있으니 찾기 쉬울걸세. @그가  한 번씩(1 시간마다) 갑옷을 랜덤으로 증정해주고 있다네. @또한 꼬마아이가 원하는 잭오랜턴 변신갑옷도 제작해주고 있지. @하지만 그는 장난이 심해서 갑옷을 그냥 줄 리는 없을거야. @그가 좋아하는 특별한 사탕을 주거나 악마인 잭오랜턴 갑옷으로 놀래켜줘야지!"


elseif req == 15 then
	return 1,0, "사탕은 마을 npc와 대화하다보면 얻을 수 있네. @특정 npc의 경우 자신과 같은 갑옷을 입거나 혹은 잭오랜턴 갑옷을 입을경우 사탕을 더 주거나 반응이 달라진다네. @또한 npc들의 미션을 완료하면 사탕을 주기도 한다네. @그것이 어려우면 그냥 마을 밖에 있는 몬스터를 잡는게 최고지!"

elseif req == 16 then
	return 1,0, " 특별한 사탕은 꼬마아이에게 사탕을 모아줄 경우 주는 보상이네. 일반 할로윈 사탕과는 많이 다르게 생겼지. 꼬마아이의 말에 의하면 '변신갑옷 제작' 대장장이가 좋아한다고 하네만.. 그래서 만약 갑옷을 만들어놓고 안준다면 사탕을 한 번 줘보게나.@그리고 호박 과자는 꼬마아이의 레시피중 하나인데, 갑옷 제작에 필요한 [['호박껍질', '불멸의 양초'를 5개씩]] 모아가면 만들 수 있다네. 아, 꼬마아이에게 가야하네!"

elseif req == 17 then
	return 1,0, "우선 잭오랜턴 갑옷 제작 재료는 @[['호박껍질', '악마의 손톱', '낡은 가죽', '불멸의 양초' 모두 30개씩]]이며, 이건 마을 npc에게서 얻거나 역시 몬스터에게서 얻을 수 있다네. 모처럼 할로윈이니 사탕이 많다면 마을 npc와 교환해보게나."


end

end




---------------------------------피로스티 NPC------------------------------------

function NPC_QUEST_1589(cnum, reqNumber) --[2011할로윈이벤트]피로스티1 ,좌표--
req = reqNumber
if req == 1 then


if GetItemCount(cnum, 8835,0) < 100 then
	if GetItemCount(cnum, 8844,2) == 1 then --피로스티 갑옷 장착 후 대화 시
	AddItemCount(cnum,8835,3)
	return 1,0, "피로스티 동지! 할로윈 데이예요. 사탕 받아가세요~@@'피로스티1 에게서 할로윈사탕 3개를 받았습니다.'"

	else
	AddItemCount(cnum,8835,1)
	return 1,0, "할로윈 데이예요. 사탕 받아가세요~@@@@@'피로스티1 에게서 할로윈사탕 1개를 받았습니다.'"
	end
else
return 1,0, "할로윈에는 악마로 변장하는게 맞지만....왜 하필 잭오랜턴이 주인공이람? (투덜투덜)"
end

end

end






function NPC_QUEST_1597(cnum, reqNumber) --[2011할로윈이벤트]피로스티3 ,좌표--

req = reqNumber

	if req == 1 then



		if GetItemCount(cnum, 8835,0) < 100 then
			AddItemCount(cnum, 8835,1)
				return 1,0, "즐거운 할로윈 보내시게~"
		else
		random = SetRandom(cnum,1,30)

			if random < 10 then
			return 1,0, "나..난 몬스터가 아니라구! @헨치화 시킬생각 하지마! @(바들바들)"

			elseif random >= 10 and random < 20  then
			return 1,0, "음.. 역시 할로윈에는 변장을 해야 @재미있지...만...@난 개인적으로 피로스티보다 아그작데빌이 @하고싶었는데.. 왜냐구? @...개..개인적인 취향이랄까?"

			elseif random >= 20 and random <= 30 then
			return 1,0, "할로윈 사탕은 마을사람들이나 몬스터들도 갖고있으니 그렇다 치고, 호박과자는 울보 '꼬마아이(81.157)'가 잘 만드니까 그 아이에게 가보는게 어떨까? @꽤 맛있다구~"
			end
		end

	end

end






function NPC_QUEST_1590(cnum, reqNumber) --[2011할로윈이벤트]피로스티2 ,좌표--
req = reqNumber

if req == 1 then
	if GetItemCount(cnum, 8835) >= 10 then
	return 2,0, "혹시 악마의 손톱이 필요하니? 그럼 네가 가진 사탕과 교환해줄게.",4,"네, 필요해요."

	else
	return 1,0, "메리 할로윈~"
	end
elseif req == 4 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "인벤토리부터 비우고 오지?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 496,1)
	return 1,0, "여기 깨끗이 다듬어뒀어~ 고마워~ 듣기로는 꼬마아이의 갑옷 제작에 필요한 재료라고 하는구나~@@'피로스티2 에게 할로윈사탕 10개를 주고 악마의손톱 1개를 받았습니다.'"
	end

end

end




---------------------------------스컬위저 NPC------------------------------------

function NPC_QUEST_1591(cnum, reqNumber) --[2011할로윈이벤트]스컬위저1 ,좌표--
req = reqNumber
if req == 1 then
	if GetItemCount(cnum, 8835,0) >= 10 then
	return 2,0, "앗 뜨거워! @이 쓸모없는 '불멸의 양초' 같으니라구...'불멸의 양초는 꼬마아이의 잭오랜턴 갑옷 제작에 사용됩니다'",5,"제게 주세요!"

	else
	return 1,0, "....메리 할로윈 보내렴."
	end

elseif req == 5 then
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "인벤토리부터 비우고 오지?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 8838, 1)
	return 1,0, "난 공짜는 좋아하지 않아.. 뭐, 어차피 꼬마아이의 갑옷 제작에 사용되긴 하지만 .. 유용하게 쓰도록 해..@@@@@'스컬위저1 에게 할로윈사탕 10개를 주고 불멸의 양초 1개를 받았습니다."
	end


end
end


function NPC_QUEST_1592(cnum, reqNumber) --[2011할로윈이벤트]스컬위저2 ,좌표--
req = reqNumber
if req == 1 then
	if GetItemCount(cnum, 8841 ,2) == 1 or GetItemCount(cnum, 8848 ,2) == 1 then --NPC와 같은 체험용 혹은 할로윈 갑옷 착용시
	return 3,0, "즐거운 할로윈 데이 보내렴!",8,"스컬위저2 씨도요!",9,"아주머니도요!"

	else
	return 1,0, "즐거운 할로윈데이~"
	end

elseif req == 8 then

if GetItemCount(cnum, 8835,0) < 500 then
	AddItemCount(cnum, 8835, 5)
	return 1,0, "어머, 그렇게 보이니? 역시 분장에 공을 들인 보람이 있었어~너도 멋지단다~@@@@@'스컬위저2 에게서 할로윈사탕 5개를 획득하였습니다.'"
else
	return 1,0, "어머, 그렇게 보이니? 역시 분장에 공을 들인 보람이 있었어~너도 멋지단다~'"
end

elseif req == 9 then
	if GetItemCount(cnum, 8835,0) > 1 then
	AddItemCount(cnum, 8835, -1)
	return 1,0, "무..뭣? 아주머니? @일주일 내내 밤을 새서 만들었는데!"
	end

end
end




function NPC_QUEST_1598(cnum, reqNumber) --[2011할로윈이벤트]스컬위저3 ,좌표--
req = reqNumber

if req == 1 then

	random = SetRandom(cnum,1,3)

	if random == 1 then
	return 1,0, "사탕을 많이 모아서 '수습마녀'에게 가면 사탕을 2배로 불릴수도 있고, 자신이 열심히 모은 사탕 개수에 해당하는 보상과 교환도 할 수 있어~@난 이제 겨우 100개를 모아서 교환했지만, 마지막 보상인 5,555개가 가장 기대된달까?@근데 어떻게 모은담.."

	elseif random == 2 then
	return 1,0, "사탕은 몬스터를 잡으면 일정 확률로 얻을 수 있지만 기존 드랍률에 비해 조금 낮은 편이야~ 하지만 갑옷이나 호박과자를 만들 때 필요한 재료 역시 몬스터에게서 나오기 때문에 모으다보면 금방이지~"

	elseif random == 3 then
	return 1,0, "할로윈 사탕을 모으기 힘들다구? 그럼 가지고 있는 사탕을 '수습마녀'에게 가져가봐~ 운이 좋으면 2배로 불리는데 성공할 수 있어! 단, 늘리는 개수가 커질수록 실패할 확률도 커진다는거! 잊지마!"

	end


end

end


---------------------------------아그작데빌 NPC------------------------------------

function NPC_QUEST_1587(cnum, reqNumber) --[2011할로윈이벤트]아그작데빌1 ,좌표--
req = reqNumber

if req == 1 then

if GetItemCount(cnum, 8835,0) < 100 then
	if GetItemCount(cnum,8848, 2) == 1  or GetItemCount(cnum, 8856,2) == 1 then --NPC와 같은 체험용 혹은 할로윈 갑옷 착용시
	AddItemCount(cnum, 8835, 3)
	return 1,0, "와, 나랑 같은 갑옷이네! @@'아그작데빌1 에게서 할로윈사탕 3개를 받았습니다.'"

	else
	AddItemCount(cnum, 8835, 1)
	return 1,0, "메리 할로윈~@@'아그작데빌1 에게서 할로윈사탕 1개를 받았습니다.'"
	end
else
	return 1,0, "메리 할로윈~~"
end

end
end




function NPC_QUEST_1588(cnum, reqNumber) --[2011할로윈이벤트]아그작데빌2 ,좌표--
req = reqNumber

if req == 1 then
	if GetItemCount(cnum,8835, 0) >= 10 then
	return 2,0, "낡은 가죽이 필요하면 네가 가지고 있는 사탕과 교환하지 않겠니?@'낡은 가죽은 꼬마아이의 잭오랜턴 갑옷 제작에 사용됩니다'",10,"네, 교환할게요"

	else
	return 1,0, "메리 할로윈~"
	end

elseif req == 10 then
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 500,1)
	return 1,0, "고맙구나. 가죽이 많이 낡긴 했지만 꼬마아이의 갑옷 제작하는데에는 이상없을거야~@@@@@'아그작데빌2에게 할로윈사탕 10개를 주고 낡은 가죽 1개를 받았습니다.'"
end
end




function NPC_QUEST_1596(cnum, reqNumber) --[2011할로윈이벤트]아그작데빌3 ,좌표--
req = reqNumber

if req == 1 then

	random = SetRandom(cnum,1,4)

	if random == 1 then
	return 1,0, "할로윈을 즐겁게 보내기 위해선 @마을 사람들과의 커뮤니케이션도 중요하답니다~ @축제는 역시 시끌벅적한게 묘미니까요~"

	elseif random == 2 then
	return 1,0, "즐거운 할로윈 보내세요~"

	elseif random == 3 then
	return 1,0, "할로윈 사탕은 몬스터 외에도 NPC에게도 얻을 수 있답니다. @대화를 해 보거나 이벤트를 하면 보상으로 획득하기도 하구요~!"

	elseif random == 4 then
	return 1,0, "변장하는것 까진 좋았는데 너무 몬스터같잖아! @@이러다 사냥당하진 않겠지..?(콩닥콩닥)"

	end


end

end
