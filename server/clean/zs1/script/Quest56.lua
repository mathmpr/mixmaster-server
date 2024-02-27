function NPC_QUEST_323(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"킁킁~ 킁킁~@마시마로! 믹스마스터 전격 입성!@최고급 아이템들이 쏟아진다는@마시마로 존으로 초대 합니다!@(마시마로 헨치를 데려가면 더욱@많이 쏟아진다는 소문이.. 수근~)@마시마로 존 입장권이 있으시다면@입장할 존을 바로 선택해주세요!@아~! 마시마로 존 입장권은..@믹마상점에서 구하실 수 있답니다!@",2,"마시마로 존(LV.1~60구간) 입장",3,"마시마로 존(LV.1~80구간) 입장",4,"마시마로 존(LV.1~100구간) 입장",5,"마시마로 존(LV.1~120구간) 입장",6,"마시마로 존(LV.1~175구간) 입장"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_324(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"킁킁~ 킁킁~@마시마로! 믹스마스터 전격 입성!@최고급 아이템들이 쏟아진다는@마시마로 존으로 초대 합니다!@(마시마로 헨치를 데려가면 더욱@많이 쏟아진다는 소문이.. 수근~)@마시마로 존 입장권이 있으시다면@입장할 존을 바로 선택해주세요!@아~! 마시마로 존 입장권은..@믹마상점에서 구하실 수 있답니다!@",2,"마시마로 존(LV.1~60구간) 입장",3,"마시마로 존(LV.1~80구간) 입장",4,"마시마로 존(LV.1~100구간) 입장",5,"마시마로 존(LV.1~120구간) 입장",6,"마시마로 존(LV.1~175구간) 입장"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end





function NPC_QUEST_325(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"킁킁~ 킁킁~@마시마로! 믹스마스터 전격 입성!@최고급 아이템들이 쏟아진다는@마시마로 존으로 초대 합니다!@(마시마로 헨치를 데려가면 더욱@많이 쏟아진다는 소문이.. 수근~)@마시마로 존 입장권이 있으시다면@입장할 존을 바로 선택해주세요!@아~! 마시마로 존 입장권은..@믹마상점에서 구하실 수 있답니다!@",2,"마시마로 존(LV.1~60구간) 입장",3,"마시마로 존(LV.1~80구간) 입장",4,"마시마로 존(LV.1~100구간) 입장",5,"마시마로 존(LV.1~120구간) 입장",6,"마시마로 존(LV.1~175구간) 입장"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"마시마로 존 입장권이 없군요.@자자~ 다시 잘 살펴보시고,@입장할 곳을 선택해주세요!",12,"네"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"킁킁~ 킁킁~@저렙 존에 가서 무슨짓을?!@당신은 현재"..heroLv.."레벨.@선택한 존은 너무 낮은 레벨이니@입장 하실 수 없습니다. @다른 존으로 쵸이쓰!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_326(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(왠지~ 똥내음이 진동하는군)@킁킁~ 마시마로 존 이용은@즐거우셨나요?@음? 벌써 마을로 돌아간다고요?@좋겠군요. 저는 이 곳에 너무 오래@머물러서 똥 냄새가 몸에 베었..ㅜ@어쨌든.. @마을로 지금 이동하시겠나요?",2,"마지리타 마을로 후딱 보내줘요",3,"메크리타 마을로 후딱 보내줘요",4,"헤르세바 마을로 후딱 보내줘요"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end





function NPC_QUEST_327(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(왠지~ 똥내음이 진동하는군)@킁킁~ 마시마로 존 이용은@즐거우셨나요?@음? 벌써 마을로 돌아간다고요?@좋겠군요. 저는 이 곳에 너무 오래@머물러서 똥 냄새가 몸에 베었..ㅜ@어쨌든.. @마을로 지금 이동하시겠나요?",2,"마지리타 마을로 후딱 보내줘요",3,"메크리타 마을로 후딱 보내줘요",4,"헤르세바 마을로 후딱 보내줘요"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end




function NPC_QUEST_328(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(왠지~ 똥내음이 진동하는군)@킁킁~ 마시마로 존 이용은@즐거우셨나요?@음? 벌써 마을로 돌아간다고요?@좋겠군요. 저는 이 곳에 너무 오래@머물러서 똥 냄새가 몸에 베었..ㅜ@어쨌든.. @마을로 지금 이동하시겠나요?",2,"마지리타 마을로 후딱 보내줘요",3,"메크리타 마을로 후딱 보내줘요",4,"헤르세바 마을로 후딱 보내줘요"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end



function NPC_QUEST_329(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(왠지~ 똥내음이 진동하는군)@킁킁~ 마시마로 존 이용은@즐거우셨나요?@음? 벌써 마을로 돌아간다고요?@좋겠군요. 저는 이 곳에 너무 오래@머물러서 똥 냄새가 몸에 베었..ㅜ@어쨌든.. @마을로 지금 이동하시겠나요?",2,"마지리타 마을로 후딱 보내줘요",3,"메크리타 마을로 후딱 보내줘요",4,"헤르세바 마을로 후딱 보내줘요"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end



function NPC_QUEST_330(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(왠지~ 똥내음이 진동하는군)@킁킁~ 마시마로 존 이용은@즐거우셨나요?@음? 벌써 마을로 돌아간다고요?@좋겠군요. 저는 이 곳에 너무 오래@머물러서 똥 냄새가 몸에 베었..ㅜ@어쨌든.. @마을로 지금 이동하시겠나요?",2,"마지리타 마을로 후딱 보내줘요",3,"메크리타 마을로 후딱 보내줘요",4,"헤르세바 마을로 후딱 보내줘요"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end
