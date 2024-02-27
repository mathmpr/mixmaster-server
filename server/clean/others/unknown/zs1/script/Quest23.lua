function NPC_QUEST_269(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 0 then
			return 1,0,"Dia sepertinya akan datang. Hm? Apa yang bisa kubantu?"

		else

			if GetSwitchCount(cnum, 290) < 1 then
				if GetSwitchCount(cnum, 288) < 1 then		
					if GetSwitchCount(cnum, 286) < 1 then		
						if GetSwitchCount(cnum, 284) < 1 then		
							if GetSwitchCount(cnum, 282) < 1 then
								if GetSwitchCount(cnum, 280) < 1 then
									return 2,0,"Hai, aku punya firasat kamu akan menemuiku setelah kudengar kabar bahwa kamu telah lulus dari Valor School. Dugaanku menjadi nyata. Tampaknya aku harus meninggalkan glutton ini. Aku terlalu menyukainya...",2,"Jangan terlalu dipikirkan. Aku akan mampir."

								else
									if GetSwitchCount(cnum, 281) < 1 then
										if GetHeroLv(cnum) < 30 or GetHench(cnum, 1, 488, 26) < 1 then
											return 1,0,"Bagaimana perjalananmu?"

										else
											return 2, 0,"Hei~! Glutton-nya tumbuh cepat. Aku akan membuatnya lebih kuat dari sebelumnya. Ijinkan aku memeliharanya.",12,"Berikan Vanyah kepada Old Mix Master." --반냐하 반납
		
										end
									else
										return  2, 0,"Oke! Selesai! Glutton the Second yang diperkuat! Oops.. maaf, Vanyah. Aku menggunakan cara penguatan hench rahasia milikku agar membuatnya semakin kuat. Bagaimana? Tampaknya sangat kuat, benar? I can strenghten it few more times, so come by me later.",22,"Ya." -- 반냐하 2단계 지급 받음.
		
									end
	
								end
							else
								if GetSwitchCount(cnum, 283) < 1 then
									if GetHeroLv( cnum ) < 50 or GetHench( cnum, 1, 489, 46 ) < 1 then
										return 1,0,"Bagaimana perjalananmu?"
			
									else
								
										return 2,0,"Hei~! Glutton-nya tumbuh cepat. Aku akan membuatnya lebih kuat dari sebelumnya. Ijinkan aku memeliharanya.",32,"Berikan Vanyah kepada Old Mix Master."
						
									end				
	
								else
									return 2,0,"Oke! Selesai! Glutton the Third yang diperkuat! Oops.. maaf, Vanyah. Aku menggunakan cara penguatan hench rahasia milikku agar membuatnya semakin kuat. Bagaimana? Tampaknya sangat kuat, benar? I can strenghten it few more times, so come by me later.",42,"Ya."
	
								end
							end

						else
							if GetSwitchCount(cnum, 285) < 1 then
								if GetHeroLv(cnum) < 70 or GetHench( cnum, 1, 490, 66 ) < 1 then					
									return 1,0,"Bagaimana perjalananmu?"


								else
									return 2,0,"Hei~! Glutton-nya tumbuh cepat. Aku akan membuatnya lebih kuat dari sebelumnya. Ijinkan aku memeliharanya.",52,"Berikan Vanyah kepada Old Mix Master.."				
	
								end

							else
								return 2,0,"Oke! Selesai! Glutton the Third yang diperkuat! Oops.. maaf, Vanyah. Aku menggunakan cara penguatan hench rahasia milikku agar membuatnya semakin kuat. Bagaimana? Tampaknya sangat kuat, benar? I can strenghten it few more times, so come by me later.",62,"Ya."
					
							end
						end

					else
						if GetSwitchCount(cnum, 287) < 1 then
							if GetHeroLv(cnum) < 90 or GetHench( cnum, 1, 491, 86 ) < 1 then
								return 1,0,"Bagaimana perjalananmu?"

							else
								return 2,0,"Hei~! Glutton-nya tumbuh cepat. Aku akan membuatnya lebih kuat dari sebelumnya. Ijinkan aku memeliharanya.",72,"Berikan Vanyah kepada Old Mix Master.."							

							end

						else
							return 2,0,"Oke! Selesai! Glutton the Third yang diperkuat! Oops.. maaf, Vanyah. Aku menggunakan cara penguatan hench rahasia milikku agar membuatnya semakin kuat. Bagaimana? Tampaknya sangat kuat, benar? I can strenghten it few more times, so come by me later.",82,"Ya."

						end

					end
		
				else
					if GetSwitchCount(cnum, 289) < 1 then
						if GetHeroLv(cnum) < 110 or GetHench( cnum, 1, 492, 106 ) < 1 then
							return 1,0, "Bagaimana perjalananmu?"

						else
							return 2,0,"Hei~! Glutton-nya tumbuh cepat. Aku akan membuatnya lebih kuat dari sebelumnya. Ijinkan aku memeliharanya.",92,"Berikan Vanyah kepada Old Mix Master."

						end

					else
						return 2,0,"Oke! Selesai! Glutton the Third yang diperkuat! Oops.. maaf, Vanyah. Aku menggunakan cara penguatan hench rahasia milikku agar membuatnya semakin kuat. Bagaimana? Tampaknya sangat kuat, benar? I can strenghten it few more times, so come by me later.",102,"Ya"

					end

				end
			
			else
				return 1,0,"Aku telah melakukan semampuku. Akan kuberitahu jika aku menemukan cara baru untuk membuatnya semakin kuat. Semoga perjalananmu aman."

			end
		end


	elseif req == 2 then
		return 2,0, "Orang menjadi lebih sensitif saat makin tua, begitupun aku. Nah, untuk hadiah kelulusanmu aku akan membuat Vanyah milikmu menjadi semakin kuat dengan cara rahasia milikku. Datanglah kembali ke kota dan kunjungi aku jika Vanyah milikmu telah menjadi kuat.",3,"Bagaimana aku mengetahui Vanyah sudah cukup kuat atau belum?"


	elseif req == 3 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
			StartQuest(cnum, 115)
			AddHench(cnum, 488, 1 )
			AddHeroExp(cnum, 600)
			AddSwitchCount(cnum, 280, 1)
	  	return 1,0, "Apa aku harus memberitahu semua? Kamu harus mengetahuinya sendiri. Jangan lupa yang pernah aku katakan. Selamat jalan."
    end





	elseif req == 12 then
		AddSwitchCount(cnum, 281, 1)
		AddHench(cnum, 488, -1) --1단계 반냐하를 반납
		return 0




	elseif req == 22 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
	  	EndQuest(cnum, 115)
	  	StartQuest(cnum, 116)--2단계 끝내고 3단계 퀘스트 정보 보여줌
	  	AddSwitchCount(cnum, 282, 1)
	  	AddHeroExp(cnum, 20000)
	  	AddHench(cnum, 489, 1) -- 2단계 지급 받고 퀘스트 종료.(퀘2 종료)
		return 0

    end





	elseif req == 32 then
		AddSwitchCount(cnum, 283, 1)
		AddHench(cnum, 489, -1) --2단계 반냐하를 반납
		return 0




	elseif req == 42 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
		EndQuest(cnum, 116)--3단계 퀘스트 종료
		StartQuest(cnum, 117)--3단계 끝내고 4단계 퀘스트 정보 보여줌
		AddSwitchCount(cnum, 284, 1)
		AddHeroExp(cnum, 100000)
		AddHench(cnum, 490, 1) --3단계 지급 받고 퀘스트 종료.(퀘3 종료)
		return 0

    end




	elseif req == 52 then
		AddSwitchCount(cnum, 285, 1)
		AddHench(cnum, 490, -1) --3단계 반하냐를 반납
		return 0



	elseif req == 62 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
		EndQuest(cnum, 117)--4단계 퀘스트 종료
		StartQuest(cnum, 118)--4단계 끝내고 5단계 퀘스트 정보 보여줌
		AddSwitchCount(cnum, 286, 1)
		AddHeroExp(cnum, 400000)
		AddHench(cnum, 491, 1) --4단계 지급 받고 퀘스트 종료.(퀘4 종료)
		return 0

    end






	elseif req == 72 then
		AddSwitchCount(cnum, 287, 1)
		AddHench(cnum, 491, -1) --4단계 반냐하 반납
		return 0




	elseif req == 82 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
		EndQuest(cnum, 118)--5단계 퀘스트 종료
		StartQuest(cnum, 119)--5단계 끝내고 6단계 퀘스트 정보 보여줌
		AddSwitchCount(cnum, 288, 1)
		AddHeroExp(cnum, 1000000)
		AddHench(cnum, 492, 1) --5단계 지급 받고 퀘스트 종료.(퀘5 종료)
		return 0

    end




	elseif req == 92 then
		AddSwitchCount(cnum, 289, 1)
		AddHench(cnum, 492, -1) --5단계 반냐하 반납
		return 0


	elseif req == 102 then
	  if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Kembalilah setelah kamu memiliki ruang dalam Inventory Core."
		else
		EndQuest(cnum, 119)--5단계 퀘스트 종료
		AddSwitchCount(cnum, 290, 1)
		AddHeroExp(cnum, 6000000)
		AddHench(cnum, 493, 1) --6단계 지급 받고 퀘스트 종료.(퀘6 종료)
		return 0
		
    end


	else
		return 1,0,"Error"
	
	end
end