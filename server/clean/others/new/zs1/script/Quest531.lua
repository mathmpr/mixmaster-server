function NPC_QUEST_355(cnum, reqNumber)


	req = reqNumber
	Lv = GetHeroLv(cnum)


	if req == 1 then
		     		return 5,0,"여어~안녕하신가!@나는 멋진 몬스터들이 가득한@그~유명한! 바르크 목장의 주인!@바로! 바르크라고 하네!@@자 군말은 더 이상 필요없겠지?!@[오로라 30주년 기념]으로@내 귀중한 목장을 오픈하겠네!@자네에게 맞는 존을 골라보게!!",2,"[Lv.1 ~ Lv.50] [바르크 목장]",3,"[Lv.51 ~ Lv.100] [바르크 목장] ",4,"[Lv.101 ~ Lv.150] [바르크 목장]",5,"[Lv.151 ~ Lv.200] [바르크 목장]"


	elseif req == 2 then
    if Lv > 0 and Lv < 51 then --> 검사
      MoveZone(cnum,183,254)
    else --> 아닐경우
      return 1,0,"안되네! 자네! 레벨은 너무 높잖아!@내 헨치들을 학살할 셈인가!@적당히 하라고~~"
		end

	elseif req == 3 then

    if Lv > 50 and Lv < 101 then --> 검사
      MoveZone(cnum,184,254)
    else --> 아닐경우
      if Lv < 51 then
        return 1,0,"안돼! 자네가 강하긴 하지만 아직 여기는 들어갈 수준이 아냐! 여기는 레벨을 51까지는 올려야 들어갈 수 있네!"
      else
      return 1,0,"안되네! 자네! 레벨은 너무 높잖아!@내 헨치들을 학살할 셈인가!@적당히 하라고~~"
      end
    end

	elseif req == 4 then
 		if Lv > 100 and Lv < 151 then --> 검사
      MoveZone(cnum,185,254)
		else --> 아닐경우
      if Lv < 101 then
        return 1,0,"안돼! 자네가 강하긴 하지만 아직 여기는 들어갈 수준이 아냐! 여기는 레벨을 101까지는 올려야 들어갈 수 있네!"
      else
      return 1,0,"안되네! 자네! 레벨은 너무 높잖아!@내 헨치들을 학살할 셈인가!@적당히 하라고~~"
      end
		end

	elseif req == 5 then
 		if Lv > 150 and Lv < 201 then --> 검사
      MoveZone(cnum,186,254)
		else --> 아닐경우
      if Lv < 151 then
        return 1,0,"안돼! 자네가 강하긴 하지만 아직 여기는 들어갈 수준이 아냐! 여기는 레벨을 151까지는 올려야 들어갈 수 있네!"
      end
		end
	end
end
