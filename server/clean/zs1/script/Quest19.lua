function NPC_QUEST_215(cnum, reqNumber)

	req = reqNumber

	if req == 1 then
		return 6,0,"Kamu ingin menguji kemampuan dan levelmu? Kamu memiliki bakat, namun jangan besar kepala dulu. Tes dariku tidaklah mudah. Level mana yang akan kamu ambil?",2,"di atas level 20",3,"di atas level 50",4,"di atas level 70",5,"di atas level 90",6,"di atas level 100"

	elseif req == 2 then

		if GetSwitchCount(cnum, 47) > 0 then
			return 1,0,"Kamu telah mengambil tes itu. Cobalah tes berikutnya."
			
		elseif GetSwitchCount(cnum, 1021) < 1 then
			if GetHeroLv(cnum) < 20 then
				return 1,0,"Kamu tidak memenuhi syarat untuk mengambil tes ini. Kembalilah jika telah di atas level 20."
			
			else
				return 2,0,"Kurasa kamu bisa menjadi Mix Master yang hebat. Tesnya adalah mendapatkan sebuah Milta Core. Tidak terlalu sulit. Akan kuberi Core yang bagus jika kamu berhasil.",101,"Menerima tes"
			end
		else
			return 3,0,"Apa kamu ingin menyelesaikan tes pertama?",12,"Tes selesai",13,"Memberikannya nanti"
		end
		
	elseif req == 3 then

		if GetSwitchCount(cnum, 47) < 1 then
			return 1,0,"Kamu memenuhi syarat, namun tes ini diatur berurutan. Kamu harus melewatinya satu demi satu."
	
		elseif GetSwitchCount(cnum, 48) > 0 then
			return 1,0,"Kamu telah mengambil tes itu. Cobalah tes berikutnya."


		elseif GetSwitchCount(cnum, 1022) < 1 then
			if GetHeroLv(cnum) < 50 then
				return 1,0,"Kamu tidak memenuhi syarat untuk mengambil tes ini. Kembalilah jika telah di atas level 50."
										
			else
				return 2,0,"Wow, kamu tampaknya kesulitan, seperti terjebak dalam pertempuran. Tes berikut adalah membawa Clawless Core setelah mencapai level 55.  Akan kuberi Core bagus jika kamu lulus.",102,"Menerima tes"
			end
		else
			return 3,0,"Apa kamu ingin menyelesaikan tes kedua?",22,"Tes selesai",23,"Memberikannya nanti"
		end				
	
	
	elseif req == 4 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 then
			return 1,0,"Kamu memenuhi syarat, namun tes ini diatur berurutan. Kamu harus melewatinya satu demi satu."
			
		elseif GetSwitchCount(cnum, 49) > 0 then
			return 1,0,"Kamu telah mengambil tes itu. Cobalah tes berikutnya."

		elseif GetSwitchCount(cnum, 1023) < 1 then
			if GetHeroLv(cnum) < 70 then
				return 1,0,"Kamu tidak memenuhi syarat untuk mengambil tes ini. Kembalilah jika telah di atas level 70."
			
			else
				return 2,0,"Niatmu sungguh kuat. Hanya segelintir orang yang mencapai tahap ini. Tes berikut adalah membawa Ballza Core setelah mencapai level 75. Akan kuberi Core bagus jika kamu lulus.",103,"Menerima tes"
			end
		else
			return 3,0,"Apa kamu ingin menyelesaikan tes ketiga?",32,"Tes selesai",33,"Memberikannya nanti"
		end
		


	elseif req == 5 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 then
			return 1,0,"Kamu memenuhi syarat, namun tes ini diatur berurutan. Kamu harus melewatinya satu demi satu."
			
		elseif GetSwitchCount(cnum, 50) > 0 then
			return 1,0,"Kamu telah mengambil tes itu. Cobalah tes berikutnya."

		elseif GetSwitchCount(cnum, 1024) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"Kamu tidak memenuhi syarat untuk mengambil tes ini. Kembalilah jika telah di atas level 90."
			
			else
				return 2,0,"Sepertinya kamu sangat mendambakan menjadi seorang Mix Master. Jangan menyerah! Coba terus! Tes kali ini adalah membawa WingCrusher Core setelah mencapai level 90 dan satu dari semua jenis Enchant Item. Akan kuberi Core bagus jika kamu lulus.",104,"Menerima tes"
			end
		else
			return 4,0,"Apa kamu ingin menyelesaikan tes keempat?",42,"Tes selesai",43,"Jenis Enchant Item",44,"Memberikannya nanti"
		end

			
	elseif req == 6 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 or GetSwitchCount(cnum, 50) < 1 then
			return 1,0,"Kamu memenuhi syarat, namun tes ini diatur berurutan. Kamu harus melewatinya satu demi satu."
			
		elseif GetSwitchCount(cnum, 51) > 0 then
			return 1,0,"Tes telah selesai. Kamu akan mengambil tes di Castle yang lain secepatnya. Oleh karena itu kamu harus meningkatkan kemampuanmu."


		elseif GetSwitchCount(cnum, 1025) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"Kamu tidak memenuhi syarat untuk mengambil tes ini. Kembalilah jika telah di atas level 100."
										
			else
				return 2,0,"Menjadi seorang Mix Master adalah sulit. Kamu mengingatkanku akan seorang teman lama. Aku harap kamu dapat menyelesaikannya. Tes terakhir adalah membawa WingStormer Core setelah mencapai level 100 dan 10 dari semua jenis Enchant Item. Akan kuberi Core bagus jika kamu lulus.",105,"Menerima tes"
			end
		else
			return 4,0,"Apa kamu ingin menyelesaikan tes keempat?",52,"Tes selesai",53,"Jenis Enchant Item",54,"Memberikannya nanti"
		end







--Äù½ºÆ® ¼ö¶ô ÇßÀ» ¶§ Ã³¸®ºÎ
	elseif req == 101 then
		StartQuest(cnum, 109)
		AddSwitchCount(cnum, 1021, 1)
		return 1,0,"Aku akan menunggumu"
		

	elseif req == 102 then
		StartQuest(cnum, 110)
		AddSwitchCount(cnum, 1022, 1)
		return 1,0,"Aku akan menunggumu"


	elseif req == 103 then
		StartQuest(cnum, 111)
		AddSwitchCount(cnum, 1023, 1)
		return 1,0,"Aku akan menunggumu"


	elseif req == 104 then
		StartQuest(cnum, 112)
		AddSwitchCount(cnum, 1024, 1)
		return 1,0,"Aku akan menunggumu"


	elseif req == 105 then
		StartQuest(cnum, 113)
		AddSwitchCount(cnum, 1025, 1)
		return 1,0,"Aku akan menunggumu"





	
--·¹º§20	
	elseif req == 12 then
		if GetHench(cnum, 1, 29 ,1) == 0 then--Äí¸£¹Ì¸£
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Jangan buang waktu dan bawakan padaku."
			

		elseif GetHench(cnum, 1, 29, 1) > 1 then
			return 1,0,"Kamu hanya perlu satu Core. Kamu bisa menyimpan sisanya dalam Warehouse."


		else
			AddHench(cnum, 29, -1)--Äí¸£¹Ì¸£ »°±â		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 224 ,1)--È£³É
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 241 ,1)--ÃµÇÏ±º
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 212 ,1)--¹ÎÆ®·¡ÇÉ
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 210 ,1)--°ñµç¸ğ½º
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."												 	
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 251 ,1)--°×¸¶¸®¿À
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."

			end
		end	

		
				
	elseif req == 13 then
		return 1,0,"Tidak ada batas waktu. Tenanglah~"














				
--·¹º§50	
	elseif req == 22 then
		if GetHench(cnum,1, 224 ,55) == 0 then--È£³É »°±â
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Jangan buang waktu dan bawakan padaku."


		elseif GetHench(cnum, 1, 224, 1) > 1 then
			return 1,0,"Kamu hanya perlu satu Core. Kamu bisa menyimpan sisanya dalam Warehouse."


		else
			AddHench(cnum, 224, -1)		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 270 ,1)--½ºÄ·ÆÛ
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 271 ,1)--¼ÒµåÅ×ÀÏ·¯
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 266 ,1)--·Î¾â¹èÆ²
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 265 ,1)--°ñµç½ºÄÃ
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."												 	
				
			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 211 ,1)--ºí·¯µğ½ã´õ
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."

			end	
		end	


	
	elseif req == 23 then
		return 1,0,"Tidak ada batas waktu. Tenanglah~"















		
--·¹º§ 70		
	elseif req == 32 then
		if GetHench(cnum, 1, 270,75) == 0 then--½ºÄ·ÆÛ »°±â
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Jangan buang waktu dan bawakan padaku."



		elseif GetHench(cnum, 1, 270, 1) > 1 then
			return 1,0,"Kamu hanya perlu satu Core. Kamu bisa menyimpan sisanya dalam Warehouse."



		elseif	GetItemCount(cnum, 311, 0) < 1 or 
			GetItemCount(cnum, 312, 0) < 1 or GetItemCount(cnum, 313, 0) < 1 or 
			GetItemCount(cnum, 314, 0) < 1 or GetItemCount(cnum, 315, 0) < 1 or 
			GetItemCount(cnum, 316, 0) < 1 or GetItemCount(cnum, 317, 0) < 1 or 
			GetItemCount(cnum, 318, 0) < 1 or GetItemCount(cnum, 319, 0) < 1 then
			return 1,0,"Kamu tidak membawa Enchant Item. Jangan buang waktu dan bawakan padaku."



		else
			AddHench(cnum, 270, -1)

			AddItemCount(cnum, 311, -1)
			AddItemCount(cnum, 312, -1)
			AddItemCount(cnum, 313, -1)
			AddItemCount(cnum, 314, -1)
			AddItemCount(cnum, 315, -1)
			AddItemCount(cnum, 316, -1)
			AddItemCount(cnum, 317, -1)
			AddItemCount(cnum, 318, -1)																							
			AddItemCount(cnum, 319, -1)

		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 9001 then
				result = AddHench(cnum, 267 ,1)--À®Å¬·¹¼Å
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				

				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 322 ,1)--È£³İ
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 326 ,1)--¸ÇÆ¼ÇÃ·£
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."						

			end
		end					


	elseif req == 33 then
		return 1,0,"Tidak ada batas waktu. Tenanglah~"












		
--·¹º§ 90		
	elseif req == 42 then
		if GetHench(cnum, 1, 267, 90) == 0 then--À®Å¬·¡¼Å »°±â
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Jangan buang waktu dan bawakan padaku."


		elseif GetHench(cnum, 1, 267, 1) > 1 then
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Kamu hanya perlu satu Core. Kamu bisa menyimpan sisanya dalam Warehouse."


			
		elseif	GetItemCount(cnum, 311, 0) < 5 or 
			GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or 
			GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or 
			GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or 
			GetItemCount(cnum, 318, 0) < 5 or GetItemCount(cnum, 319, 0) < 5 then
			return 1,0,"Kamu tidak membawa Enchant Item. Jangan buang waktu dan bawakan padaku."
			 
		else
			AddHench(cnum, 267, -1)
			
			AddItemCount(cnum, 311, -5)
			AddItemCount(cnum, 312, -5)
			AddItemCount(cnum, 313, -5)
			AddItemCount(cnum, 314, -5)
			AddItemCount(cnum, 315, -5)
			AddItemCount(cnum, 316, -5)
			AddItemCount(cnum, 317, -5)
			AddItemCount(cnum, 318, -5)																							
			AddItemCount(cnum, 319, -5)
						
			random = SetRandom(cnum, 1, 10000)
			
			if random < 9001 then
				result = AddHench(cnum, 282 ,1)--À®½ºÅè·¹ÀÌ¼Å
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end

				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 287 ,1)--È­»Ô¼Ò
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 299 ,1)--¿À¸£µ¥ºô
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."

			end
		end							
		
		
	elseif req == 43 then
		return 1,0,"Chisel of Archer, Chisel of Thief, Chisel of Valor, Chisel of Power, Chisel of Agility, Chisel of Accuracy, Chisel of Life, Tear Star"
			
	elseif req == 44 then
		return 1,0,"Tidak ada batas waktu. Tenanglah~"	












		
--·¹º§ 100		
	elseif req == 52 then
		if GetHench(cnum, 1, 282, 100) == 0 then--À®½ºÅè·¹ÀÌ¼Å »°±â
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Jangan buang waktu dan bawakan padaku."


		elseif GetHench(cnum, 1, 282, 1) > 1 then
			return 1,0,"Aku tidak melihat Core yang kubutuhkan. Kamu hanya perlu satu Core. Kamu bisa menyimpan sisanya dalam Warehouse."


			
		elseif	GetItemCount(cnum, 311, 0) < 10 or GetItemCount(cnum, 312, 0) < 10 or 
			GetItemCount(cnum, 313, 0) < 10 or GetItemCount(cnum, 314, 0) < 10 or 
			GetItemCount(cnum, 315, 0) < 10 or GetItemCount(cnum, 316, 0) < 10 or 
			GetItemCount(cnum, 317, 0) < 10 or GetItemCount(cnum, 318, 0) < 10 or 
			GetItemCount(cnum, 319, 0) < 10 then
			return 1,0,"Kamu tidak membawa Enchant Item. Jangan buang waktu dan bawakan padaku."
			 
		else
			AddHench(cnum, 282, -1)
			
			AddItemCount(cnum, 311, -10)
			AddItemCount(cnum, 312, -10)
			AddItemCount(cnum, 313, -10)
			AddItemCount(cnum, 314, -10)
			AddItemCount(cnum, 315, -10)
			AddItemCount(cnum, 316, -10)
			AddItemCount(cnum, 317, -10)
			AddItemCount(cnum, 318, -10)																							
			AddItemCount(cnum, 319, -10)
						
			random = SetRandom(cnum, 1, 10000)
			
			if random < 7001 then
				result = AddHench(cnum, 296 ,1)--»ß¿¡º¼
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 335 ,1)--·¹µå°ï
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."
				
			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 338 ,1)--¸ğ½ºÄ¸Æ¾
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 331 ,1)--ÇÃ·Î¿ö
				if result < -1 then
					return 1,0,"Kamu butuh tempat untuk menaruh Core."
				end

				EndQuest(cnum, 113)				
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Bagus! Akan kuberi Core yang telah kujanjikan. Apa kau tahu ini juga sebuah tes? Jika kamu menunjukkan kemampuanmu, maka kamu akan menerima lebih dari yang dijanjikan."	

			end
		end							
		
		
	elseif req == 53 then
		return 1,0,"Chisel of Archer, Chisel of Thief, Chisel of Valor, Chisel of Power, Chisel of Agility, Chisel of Accuracy, Chisel of Life, Tear Star"
			
	elseif req == 54 then
		return 1,0,"Tidak ada batas waktu. Tenanglah~"		

	end
end			
		