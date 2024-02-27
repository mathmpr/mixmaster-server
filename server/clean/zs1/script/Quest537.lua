function NPC_QUEST_721(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end


function NPC_QUEST_722(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end


function NPC_QUEST_723(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end


function NPC_QUEST_724(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end


function NPC_QUEST_725(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end


function NPC_QUEST_741(cnum,reqNumber) -- 월드컵 이벤트_02 축구장 안내 터틀리(입장)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"지금 바깥 세상에는 월드컵이 한창이라지? 대한민국이 그리스를 통쾌하게 격파했다는 소식이 들리던데 정말 나도 기분이 좋아! 너도 축구장에 한번 들어가 보려구? 혹시 믹마 축구장 입장권이나 대한민국 국기 5000개를 가지고 있니?",2,"[믹마 축구장 입장권]이 있어",3,"[대한민국 국기 5000개]가 있어",4,"[체험 입장]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
		else
			return 1,0,"믹마 축구장 입장권이 없는거 같아~! 한번 다시 확인해 볼래?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리의 여유공간이 부족해~! 아이템 인벤토리를 1칸 이상 비우고 다시 올래? 만약 네가 대한민국 국기 5000개를 모아왔다고 해도 인벤토리가 1칸이상 비워있지 않으면 내가 믹마 축구장 입장권을 줄 수가 없어"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"우리나라를 참 사랑하는구나! 대한민국 국기 5000개를 믹마 축구장 입장권으로 교환해줄게! 자~! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",5,"믹마 축구장(LV1~40)입장",6,"믹마 축구장(LV41~60)입장",7,"믹마 축구장(LV61~80)입장",8,"믹마 축구장(LV81~100)입장",9,"믹마 축구장(LV101~175)입장"
			else
				return 1,0,"대한민국 국기 5000개가 없는거 같은데 확인해볼래?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 9 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"좋아~! 한번도 안들어가 봤으니~! 내가 몰래 30분 무료 입장권을 줄게~! 얼른 가서 퀴즈와 승부차기를 해봐! 아참! 참고로 국기를 많이 모아가는게 좋아! 체험 입장은 한번뿐이야~지금 들어갈래?!",11,"응",10,"아니! 나중에 들어갈게"
		else
			return 1,0,"몰래 들여보내주는건 한번뿐이야~! 축구장 입장권 혹은 대한민국 국기 5000개가 있어야 들어갈 수 있어. 미안해!"
		end

	elseif req == 10 then
		return 1,0,"응! 그래. 국기를 많이 모아서 들어가는게 좋을거야!"

	elseif req == 11 then
		return 6,0,"자~! 좋아! 너의 레벨에 해당하는 믹마 축구장을 갈 수 있어!",12,"믹마 축구장(LV1~40)입장",13,"믹마 축구장(LV41~60)입장",14,"믹마 축구장(LV61~80)입장",15,"믹마 축구장(LV81~100)입장",16,"믹마 축구장(LV101~175)입장"


	elseif req == 12 then
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	elseif req == 16 then
		if herolv > 100 then --> 히어로 레벨이 101 이상일 때
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"안돼~!안돼~! 너의 레벨에 맞는 믹마 축구장만 이용할 수 있어!"
		end

	end
end



