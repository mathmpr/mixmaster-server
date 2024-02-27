function NPC_QUEST_619(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end



function NPC_QUEST_620(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end



function NPC_QUEST_621(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end



function NPC_QUEST_622(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end



function NPC_QUEST_623(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end




function NPC_QUEST_624(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"사랑에 빠진 그대! 누구에게 사랑의 화살을 날려드릴까요? 아~ 그보다 먼저.. 사랑의 하트초콜릿을 만들어 마음을 전달해보심이..",2,"만드는 법을 알려주세요.",3,"솔로 천당! 커플 지옥!"

			else
				return 2,0,"카카오 열매는 모두 구하셨나요? 그렇다면 저에게 넘겨주세요. 맛있는 초콜릿으로 만들어 드릴게요",22,"카카오를 넘긴다"

			end

		else
			return 3,0,"포장지를 구해 오셨나요? 포장지와 초콜릿을 저에게 주시면 하트 초콜릿으로 만들어 드립니다. 카카오 30개를 주시면 초콜릿도 다시 만들어 드리고 있어요.",42,"하트 초콜릿 만들기",43,"초콜릿 만들기"

		end
		

	elseif req == 2 then
		return 3,0,"간단합니다! 몬스터를 잡다보면 카카오열매가 나올겁니다. 카카오열매 30개를 저에게 갖다 주면 맛있는 초코렛으로 만들어드릴께요.",12,"꿀꺽! 당장 구해오죠!",13,"난 사탕이 좋은데. 죄송"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."


		else

			return 3,0,"카카오열매 30개를 구해오셨군요! 금방 맛있는 초콜릿을 만들어 드릴게요. 초콜릿은 그냥 드셔도 되는데 잡화상점에서 파는 포장지를 구해오시면 하트초콜릿으로 만들어 드립니다요.",32,"포장지요? 구해올께요!",33,"그냥 먹을랍니다! 꿀꺽!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"와우! 굿 초이스! 일단 초콜릿 받으시고, 어서 잡화상점에서 포장지를 구해오세요. 지금 드린 초콜릿은 절대 먹으면 안되요. 포장지와 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"포장지만 있네요? 쩝.. 비행기라도 접어드릴까요? 초콜릿도 있어야 하트초콜릿을 만들죠. 초콜릿은 카카오열매 30개를 모아오면 만들어 드립니다요. 아시겠죠?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"포장지도 함께 가져와야지만 하트 초콜릿을 만들어드릴 수 있어요. 아시겠지요? 어서 잡화상점에서 포장지를 구해오세요."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"인벤토리에 하크 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"카카오열매가 모자라네요. 30개를 가져와야지 초콜릿을 만들어드릴 수 있어요."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"인벤토리에 초콜렛을 넣을 공간이 없습니다."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"에러"

	end
end