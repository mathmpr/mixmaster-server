 function NPC_QUEST_1057(cnum,reqNumber) -- »êÅ¸ÇÒ¾Æ¹öÁö

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --Ã³À½ ´ëÈ­½Ã
			return 2,0,"¾ÆÀÌ°í! ÀÌ³ğÀÇ ·çµ¹ÇÁ ³à¼®Àº ´ëÃ¼ ¾îµğ·Î °£ °Å¶÷.¾Æ! ÀÚ³× È¤½Ã »¡°£ ÄÚÀÇ »ç½¿À» º¸Áö ¸øÇß³ª? ",10,"¾Æ´¢."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) == 1 and GetSwitchCount(cnum, 580) < 1  then
			return 3,0,"ÀÚ³× È¤½Ã ·çµ¹ÇÁ´Â Ã£¾Ò³ª?",12,"³×..¾îµğ³Ä ÇÏ¸é..",13,"¾Æ´¢! Ã£Áö ¸øÇß¾î¿ä."

		else
			return 1,0,"´©±º°¡¿¡°Ô Çà¿îÀÌ ´ã±ä ¸Ş½ÃÁö¸¦ µéÀ¸¸é Å©¸®½º¸¶½º Æ®¸®·Î °¡º¸°Ô³ª. ÀÚ³×¿¡°Ô Çà¿îÀ» ÁÙ °É¼¼."
		end



	elseif req == 10 then
			return 2,0,"µµ´ëÃ¼ ¾îµğ·Î °£ °ÅÁö? »¡¸® ÂøÇÑ ¾ÆÀÌµé ¿¡°Ô ¼±¹°À» Àü´Ş ÇØ¾ß ÇÏ´Âµ¥ ¸»ÀÌ¾ß¡¦ ÀÚ³× È¤½Ã ·çµ¹ÇÁ¸¦ º¸°Ô µÈ´Ù¸é ÀÌ¾ß±â Á» ÇØÁÖ°Ô  ",11,"³×. "


	elseif req == 11 then
			AddSwitchCount(cnum, 578, 1) -- ·çµ¹ÇÁÀÌº¥Æ® ½ÃÀÛ ½ºÀ§Ä¡
			return 1,0,"º¸´äÀ¸·Î ÀÚ³×¿¡°Ô ÁÁÀº Á¤º¸¸¦ ¾Ë·Á ÁÖÁö. ³»°¡ ¿ÃÇØ¿¡´Â ¼±¹°À» Á÷Á¢ Ã£¾Æ°¡ ÁÖÁö ¸øÇÒ °Í °°¾Æ ¸¶À»¿¡ Ä¿´Ù¶õ Æ®¸®¸¦ ¼¼¿ö ¼±¹°À» ÁÙ °Å¶ó³×. ÀÚ³×°¡ ÂøÇÑÀÏÀ» Çß´Ù¸é ´©±º°¡¿¡°Ô ÁõÇ¥¸¦ ¹Ş¾Æ ±× Æ®¸®¿¡¼­ ¼±¹°À» ¹ŞÀ» ¼ö ÀÖÀ» °Å¶ó³×. "



	elseif req == 12 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@»êÅ¸¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- Âü ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 579, 1) -- »êÅ¸ º¸»ó ½ºÀ§Ä¡
				return 1,0,"Çã.. ±×³ğÀÌ °Å±â ¼û¾î ÀÖ¾ú´Ü ¸»ÀÌÁö? ÀÌ³ğÀ» ±×³É!!@ÈìÈì.. Á¤¸» °í¸¿³×. º¸´äÀ¸·Î ÀÌ°ÍÀ» ÁÖÁö."


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"Çã.. ±×³ğÀÌ °Å±â ¼û¾î ÀÖ¾ú´Ü ¸»ÀÌÁö? ÀÌ³ğÀ» ±×³É!!@ÈìÈì.. Á¤¸» °í¸¿³×. º¸´äÀ¸·Î ÀÌ°ÍÀ» ÁÖÁö."

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"Çã.. ±×³ğÀÌ °Å±â ¼û¾î ÀÖ¾ú´Ü ¸»ÀÌÁö? ÀÌ³ğÀ» ±×³É!!@ÈìÈì.. Á¤¸» °í¸¿³×. º¸´äÀ¸·Î ÀÌ°ÍÀ» ÁÖÁö."

			else
				return 1,0,"¿À·ù 2"

			end
		end


	elseif req == 13 then
			AddSwitchCount(cnum, 580, 1) -- ·çµ¹ÇÁ º¸»ó ½ºÀ§Ä¡
			return 1,0,"¾ÆÁ÷ ¸ø Ã£¾Ò³ª? ÀÌ³ğÀ» ¾îµğ °¡¾ß Ã£À»°ÕÁö.."

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1058(cnum,reqNumber) -- ·çµ¹ÇÁ

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --Ã³À½ ´ëÈ­½Ã
			return 1,0,"...."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) < 1 then
			return 2,0,"¾Ñ! ±ôÂ¦ÀÌ¾ß. ÇÒ¾Æ¹öÁöÀÎ ÁÙ ¾Ë¾Ò¾î¿ä.",12,"»êÅ¸ÇÒ¾Æ¹öÁö°¡ ³Î Ã£°í ÀÖ¾î."

		elseif GetSwitchCount(cnum, 579) == 2 then
			return 1,0,"ÀÌ ¹è½ÅÀÚ!"

		elseif GetSwitchCount(cnum, 580) == 1 then
			return 2,0,"È¤½Ã Á¦°¡ ÀÖ´Â °÷À» ¾Ë·Á ÁÖ¾ú³ª¿ä?",14,"¾Ë·ÁÁÖÁö ¾Ê¾Ò¾î."

		elseif GetSwitchCount(cnum, 580) == 2 then
			return 1,0,"Á¤¸» °í¸¶¿ö¿ä!"

		else
			return 1,0,"Á¤¸» ºÎÅ¹ µå·Á¿ä."

		end


	elseif req == 12 then
		return 2,0,"Çä! ¾ÈµÇ¿ä. Á¦¹ß Àı ºÃ´Ù°í ÇÏÁö ¸»¾ÆÁÖ¼¼¿ä.¸ÅÀÏ °°ÀÌ ÀÏ¸¸ ºÎ·Á¸Ô°í ÀÏ ¸øÇÑ´Ù°í ±¸¹ÚÇÏ´Â ³ª»Û »ç¶÷ÀÌ¿¡¿ä.",13,"À½.. »ı°¢ ÇØ º¸°í.."


	elseif req == 13 then
		AddSwitchCount(cnum, 579, 1) -- »êÅ¸ º¸»ó ½ºÀ§Ä¡
		return 1,0,"Á¤¸» ºÎÅ¹µå·Á¿ä."


	elseif req == 14 then

		if GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@·çµ¹ÇÁ¿¡°Ô¼­ ÇîÄ¡¸¦ ¹Ş±âÀ§ÇØ¼± [ÇîÄ¡ ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if GetHeroLv(cnum, 1) < 41 then
				AddHench(cnum,938,1) -- ·çµ¹ÇÁ lv40
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"Àú¸¦ ¼û°Ü ÁÖ¼Ì±º¿ä! Á¤¸» °í¸¶¿ö¿ä. ´ç½ÅÀÌ¶ó¸é Á¦ µ¿·á°¡ µÉ ÃæºĞÇÑ ÀÚ°İÀÌ ÀÖ¾î¿ä. ³Ê¹« °í¸¶¿ö¿ä!"

			elseif GetHeroLv(cnum, 1) < 61 then
				AddHench(cnum,939,1) -- ·çµ¹ÇÁ lv60
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"Àú¸¦ ¼û°Ü ÁÖ¼Ì±º¿ä! Á¤¸» °í¸¶¿ö¿ä. ´ç½ÅÀÌ¶ó¸é Á¦ µ¿·á°¡ µÉ ÃæºĞÇÑ ÀÚ°İÀÌ ÀÖ¾î¿ä. ³Ê¹« °í¸¶¿ö¿ä!"

			elseif GetHeroLv(cnum, 1) < 81 then
				AddHench(cnum,940,1) -- ·çµ¹ÇÁ lv80
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"Àú¸¦ ¼û°Ü ÁÖ¼Ì±º¿ä! Á¤¸» °í¸¶¿ö¿ä. ´ç½ÅÀÌ¶ó¸é Á¦ µ¿·á°¡ µÉ ÃæºĞÇÑ ÀÚ°İÀÌ ÀÖ¾î¿ä. ³Ê¹« °í¸¶¿ö¿ä!"

			elseif GetHeroLv(cnum, 1) < 101 then
				AddHench(cnum,941,1) -- ·çµ¹ÇÁ lv100
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"Àú¸¦ ¼û°Ü ÁÖ¼Ì±º¿ä! Á¤¸» °í¸¶¿ö¿ä. ´ç½ÅÀÌ¶ó¸é Á¦ µ¿·á°¡ µÉ ÃæºĞÇÑ ÀÚ°İÀÌ ÀÖ¾î¿ä. ³Ê¹« °í¸¶¿ö¿ä!"

			elseif GetHeroLv(cnum, 1) < 176 then
				AddHench(cnum,942,1) -- ·çµ¹ÇÁ lv120
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"Àú¸¦ ¼û°Ü ÁÖ¼Ì±º¿ä! Á¤¸» °í¸¶¿ö¿ä. ´ç½ÅÀÌ¶ó¸é Á¦ µ¿·á°¡ µÉ ÃæºĞÇÑ ÀÚ°İÀÌ ÀÖ¾î¿ä. ³Ê¹« °í¸¶¿ö¿ä!"

			else
				return 1,0,"¿À·ù 2"
			end
		end

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1059(cnum,reqNumber) -- Æ®¸®

req = reqNumber
random = SetRandom(cnum,0,100)

	if req == 1 then
		return 4,0,"µµÀåÀ» ¼±¹°·Î ±³È¯ ÇÏ½Ã°Ú½À´Ï±î?",10,"[Âü ÀßÇß¾î¿ä] µµÀå ±³È¯.",20,"[ÀßÇß¾î¿ä] µµÀå ±³È¯.",30,"[Á¶±İ ÀßÇß¾î¿ä] µµÀå ±³È¯."


	elseif req == 10 then

		if GetItemCount(cnum, 8600, 0) < 1 then --Âü ÀßÇß¾î¿ä µµÀå
			return 1,0,"[Âü ÀßÇß¾î¿ä]µµÀåÀÌ ºÎÁ· ÇÕ´Ï´Ù."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ÇîÄ¡¸¦ ¹Ş±âÀ§ÇØ¼± [ÇîÄ¡ ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 3 then
			random = SetRandom(cnum,0,100)
				if random <= 15 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,70,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [ Çà¿îÀÇ ³ØÅ¬¸®½º ]¸¦ ¾ò¾ú½À´Ï´Ù."

				elseif random >= 16 and random <= 32 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,71,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¿£Æ®¸µ  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 33 and random <= 45 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,72,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¸¶³ª ¾Ï¸´  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 46 and random <= 60 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,73,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  ÁÒºê ±Û·¯ºê  ]¸¦ ¾ò¾ú½À´Ï´Ù."

				elseif random >= 61 and random <= 73 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,74,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  ½Å¼ÓÀÇ ºÎÃ÷  ]¸¦ ¾ò¾ú½À´Ï´Ù."

				elseif random >= 74 and random <= 86 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,75,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  À§ÀÚµå Çï¸ä  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 87 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,76,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¹Ì½º¸± ¾Æ¸Ó  ]¸¦ ¾ò¾ú½À´Ï´Ù."

				end

			elseif random >= 4 and random <= 90 then
			random = SetRandom(cnum,0,100)
				if random <= 50 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,8603,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  »êÅ¸ÀÇ HP»ù¹°  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 51 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddItemCount(cnum,8604,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  »êÅ¸ÀÇ MP»ù¹°  ]À» ¾ò¾ú½À´Ï´Ù."
				end

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,372,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  Æä¾î¸® µå·¡°ï  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,717,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  Ä¡Ä¡  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,722,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¾Ş¾Ş  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,727,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¹Ì¸£  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- Âü ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,732,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ´Ï³ğ  ]À» ¾ò¾ú½À´Ï´Ù."
				end

			else
				return 1,0,"¿À·ù 2"
			end
		end


	elseif req == 20 then

		if GetItemCount(cnum, 8601, 0) < 1 then --ÀßÇß¾î¿ä µµÀå
			return 1,0,"[ÀßÇß¾î¿ä]µµÀåÀÌ ºÎÁ· ÇÕ´Ï´Ù."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ÇîÄ¡¸¦ ¹Ş±âÀ§ÇØ¼± [ÇîÄ¡ ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 1 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8603,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  »êÅ¸ÀÇ HP»ù¹°  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8604,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  »êÅ¸ÀÇ MP»ù¹°  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 4 and random <= 18 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,1186,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ´«»ç¶÷ º¯½Å°©¿Ê  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 19 and random <= 33 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,1185,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ·çµ¹ÇÁ º¯½Å°©¿Ê  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 34 and random <= 48 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8589,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ÇÎÅ©±¸¸§  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 49 and random <= 90 then
				AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8591,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  °ËÁ¤±¸¸§  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,282,1) -- º¸»ó ÇîÄ¡Û
					return 1,0,"[Æ®¸®]¿¡¼­ [  À®½ºÅè·¹ÀÌ¼Å  ]¸¦ ¾ò¾ú½À´Ï´Ù."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,715,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  Ä¡Ä¡  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,720,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¾Ş¾Ş  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,725,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¹Ì¸£  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8601,-1) -- ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,730,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ´Ï³ğ  ]À» ¾ò¾ú½À´Ï´Ù."
				end


			else
				return 1,0,"¿À·ù 2"
			end
		end



	elseif req == 30 then

		if GetItemCount(cnum, 8602, 0) < 1 then --Á¶±İ ÀßÇß¾î¿ä µµÀå
			return 1,0,"[Á¶±İ ÀßÇß¾î¿ä]µµÀåÀÌ ºÎÁ· ÇÕ´Ï´Ù."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@Æ®¸®¿¡°Ô¼­ ÇîÄ¡¸¦ ¹Ş±âÀ§ÇØ¼± [ÇîÄ¡ ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 1 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦å
				AddItemCount(cnum,1186,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®¿¡¼­ [  ´«»ç¶÷ º¯½Å°©¿Ê  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,1185,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ·çµ¹ÇÁ º¯½Å°©¿Ê  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 4 and random <= 23 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8058,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ´«»ç¶÷ º¯½Å¾ÆÀÌÅÛ  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 24 and random <= 43 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8057,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ·çµ¹ÇÁ º¯½Å¾ÆÀÌÅÛ  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 44 and random <= 63 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8059,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  Æ®¸® º¯½Å¾ÆÀÌÅÛ  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 64 and random <= 93 then
				AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
				AddItemCount(cnum,8590,1) -- º¸»ó ¾ÆÀÌÅÛ
				return 1,0,"[Æ®¸®]¿¡¼­ [  ÇÏ¾á±¸¸§  ]¸¦ ¾ò¾ú½À´Ï´Ù."

			elseif random >= 94 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,278,1) -- º¸»ó ¾ÆÀÌÅÛ
					return 1,0,"[Æ®¸®]¿¡¼­ [  »ÔÄá  ]¸¦ ¾ò¾ú½À´Ï´Ù."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,713,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  Ä¡Ä¡  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,718,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¾Ş¾Ş  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,723,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ¹Ì¸£  ]À» ¾ò¾ú½À´Ï´Ù."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8602,-1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå »èÁ¦
					AddHench(cnum,728,1) -- º¸»ó ÇîÄ¡
					return 1,0,"[Æ®¸®]¿¡¼­ [  ´Ï³ğ  ]À» ¾ò¾ú½À´Ï´Ù."
				end



			else
				return 1,0,"¿À·ù 2"
			end

		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1060(cnum,reqNumber) -- ½É½ÉÇÑ ³ëÀÎ

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 581) < 1 then --Ã³À½ ´ëÈ­½Ã
			return 2,0,"¹ë·¯·Î±¸¸¸.. ÀÚ³× ³» ÀÌ¾ß±â Á» µé¾î ÁÖ°Ú³ª?",10,"³×."

		elseif GetSwitchCount(cnum, 581) == 1 then
			return 1,0,"ÀÚ³× ¶Ç º¸´Â±º! ÀÚÁÖ ÀÎ»ç ÇÏ¸ç Áö³»¼¼."

		else
			return 1,0,"¿À·ù1"
		end

	elseif req == 10 then
		return 3,0,"ÀÚ³Ù Å©¸®½º¸¶½º°¡ ¾î¶² ³¯ÀÎÁö ¾Æ´Â°¡? Å©¸®½º ¸¶½º´Â ¸»ÀÌ¾ß ÇÑ ¸íÀÇ ¼±ÀÎÀ¸·ÎºÎÅÍ ½ÃÀÛ µÇ¾ú´Ù³×. ´©±¸³Ä°í? ¹Ù·Î ¼¼ÀÎÆ® ´ÏÄİ¶ó½º ¶ó´Â ¼ºÀÎÀÌÁö.",20,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"

	elseif req == 11 then
		return 3,0,"¾Æ ±×·¡ ±×·¸±º. ±×·±µ¥ ±× ºĞÀº ¹«Ã´ÀÌ³ª ÀÚ¼±½ÉÀÌ ¸¹¾Ò¾î. ³² ¸ô·¡ ¾î·Á¿î ÀÌ¿ôÀ» µ½°í Ç×»ó ÀÚ½Å º¸´Ù ÁÖº¯À» µÎ·ç »ìÆñ´ø ºĞÀÌÁö.",21,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"

	elseif req == 12 then
		return 3,0,"±×·¸Áö! ±×·±µ¥ Àú±â ±¤Àå¿¡ ÀÖ´Â »êÅ¸´Â 32´ë »êÅ¸ Å¬·Î½º ¶ó³×. ±«ÆÅÇÏ±ä ÇÏÁö¸¸ ±× ºĞÀÇ ÇÇ¸¦ ÀÌ¾î¼­ ±×·±Áø ¸ô¶óµµ ¾ÆÀÌµéÀ» ¹«Ã´ ÁÁ¾ÆÇÏÁö.",22,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"

	elseif req == 13 then
		return 3,0,"À½.. ¸Â¾Æ Àá½Ã ´Ù¸¥ ¸»À» Çß±¸¸¸. ¿©ÇÏÆ° ¼¼ÀÎÆ® ´ÏÄİ¶ó½º ±× ºĞÀº ±×·± ¸ğ½ÀÀ¸·Î ¸ğµç ÀÎ°£µé¿¡°Õ ¼ş¹è¸¦ ¹Ş¾Ò°í ¸¶Ä§³» ±× ºĞÀ» ÃßÁ¾ÇÏ´Â »ç¶÷µéÀÌ ³ªÅ¸³ª »êÅ¸Å¬·Î½º°¡ Åº»ı ÇÏ°Ô µÈ°ÅÁö.",14,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"

	elseif req == 14 then
		return 3,0,"»êÅ¸Å¬·Î½º´Â ÂøÇÑ ÀÏÀ» ÇÏ´Â ¾ÆÀÌµé¿¡°Ô ¼±¹°À» ÁÖ±â·Îµµ À¯¸íÇÏÁö. ¿Ö ±×·± ÁÙ ¾Æ´Â°¡? ¹Ù·Î ÃÊ´ë »êÅ¸Å¬·Î½º ´ÔÀÌ ºÒ½ÖÇÑ ¼Ò³à ¼ÂÀÌ ¸÷½Ã °¡³­ ÇÏ¿© ÆÈ·Á°¡·Á ÇÒ ¶§ ¸ô·¡ µ· ÁÖ¸Ó´Ï¸¦ ´øÁ® ÁÖ¾î ¾ÆÀÌµéÀ» ±¸ÇØ ÁÖ¾ú´Ù³×.",23,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"

	elseif req == 15 then
		return 3,0,"±×·¡! ÇÏ¿©°£ ±×°Ç ÇÏ³ª¿¡ ºÒ°ú ÇÏ°í ¹«Ã´ÀÌ³ª ¸¹Àº ¼±ÇàÀ» º£Çª½Å ºĞÀÌÁö. À½.. ¼ıÀÚ·Î µûÁö¸é 2000¹øÀº µÇ·Á³ª?? ¾Æ´Ï±º.. °Å±â¿¡ ÇÑ µÎ ¹è´Â µÉ °É¼¼..",24,"±×·¸±º¿ä",100,"Áö°Ü¿ö¿ä"



	elseif req == 20 then
		return 4,0,"À½.. ³»°¡ ¾îµğ±îÁö ¸»Çß¾úÁö? ",11,"¼¼ÀÎÆ® ´ÏÄİ¶ó½º¶ó½º ¶ó°í.",200,"´ÏÄİ¶ó½º ÄÉÀÌÁö¶ó°í¡¦",200,"»êÅ¸ Å¬·Î½º ¶ó°í.."

	elseif req == 21 then
		return 4,0,"À½.. ³»°¡ ¾îµğ±îÁö ¸»Çß¾úÁö? ",200,"ÀÚÁ¸½ÉÀÌ ¹«Ã´ °­Çß´Ù°í...",12,"ÀÚ¼±½ÉÀÌ ¹«Ã´ °­Çß´Ù°í..",200,"ÀÚ¸¸½ÉÀÌ ¹«Ã´ °­Çß´Ù°í.."

	elseif req == 22 then
		return 4,0,"À½.. ³»°¡ ¾îµğ±îÁö ¸»Çß¾úÁö? ",200,"35´ë »êÅ¸ Å¬·Î½º ¾ê±â¿ä.. ",13,"32´ë »êÅ¸ Å¬·Î½º ¾ê±â¿ä..",200,"23´ë »êÅ¸ Å¬·Î½º ¾ê±â¿ä.."

	elseif req == 23 then
		return 4,0,"À½.. ³»°¡ ¾îµğ±îÁö ¸»Çß¾úÁö? ",15,"µ·ÁÖ¸Ó´Ï¸¦ ´øÁ® ÁÖ¼Ì´Ù°í..",200,"µ¹¸ÍÀÌ¸¦ ´øÁ³´Ù°í..",200,"¿Â¸öÀ» ´øÁ³´Ù°í.."

	elseif req == 24 then
		return 4,0,"¾ÆÀÌ±¸.. ÀÌ³ğÀÇ ¸Ó¸®¾ß.. ³ªÀÌ°¡ ¸¹À¸´Ï ±İ¹æ ±î¸Ô³×.³»°¡ ¸î ¹øÀÌ¶ó ±×·¨Áö?",200,"2000",200,"3000",50,"4000"




	elseif req == 50 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@½É½ÉÇÑ ³ëÀÎ¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- Âü ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 581, 1) -- ½É½ÉÇÑ³ëÀÎ º¸»ó ½ºÀ§Ä¡
				return 1,0,"±×·¸Áö! ÀÚ³Ù Á¤¸» »ç¶÷ ¸»À» ±Í ±â¿ïÀÏ ÁÙ ¾Æ´Â »ç¶÷ÀÌ±¸¸¸! ¿À·£¸¸¿¡ ÀÌ¸® Áñ°Å¿î ½Ã°£À» º¸³½ °Å °°³×. ÀÌ ÁõÇ¥¸¦ ¹Ş°Ô³ª. ÁÁÀº ÀÏÀÌ »ı±æ °Ô¾ß. "


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 581, 1) -- ½É½ÉÇÑ³ëÀÎ º¸»ó ½ºÀ§Ä¡
				return 1,0,"±×·¸Áö! ÀÚ³Ù Á¤¸» »ç¶÷ ¸»À» ±Í ±â¿ïÀÏ ÁÙ ¾Æ´Â »ç¶÷ÀÌ±¸¸¸! ¿À·£¸¸¿¡ ÀÌ¸® Áñ°Å¿î ½Ã°£À» º¸³½ °Å °°³×. ÀÌ ÁõÇ¥¸¦ ¹Ş°Ô³ª. ÁÁÀº ÀÏÀÌ »ı±æ °Ô¾ß. "

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				AddSwitchCount(cnum, 581, 1) -- ½É½ÉÇÑ³ëÀÎ º¸»ó ½ºÀ§Ä¡
				return 1,0,"±×·¸Áö! ÀÚ³Ù Á¤¸» »ç¶÷ ¸»À» ±Í ±â¿ïÀÏ ÁÙ ¾Æ´Â »ç¶÷ÀÌ±¸¸¸! ¿À·£¸¸¿¡ ÀÌ¸® Áñ°Å¿î ½Ã°£À» º¸³½ °Å °°³×. ÀÌ ÁõÇ¥¸¦ ¹Ş°Ô³ª. ÁÁÀº ÀÏÀÌ »ı±æ °Ô¾ß. "

			else
				return 1,0,"¿À·ù 2"

			end
		end



	elseif req == 100 then
		return 1,0,"ÀÚ³Ù ¿¹ÀÇ°¡ ¾ø±¸¸¸!!"


	elseif req == 200 then
		return 2,0,"³ª´Â ±×·±¸»À» ÇÑÀûÀÌ ¾ø´Âµ¥? ´Ù½Ã ÀÌ¾ß±â ÇØÁÖ°Ú³×",10,"³×.."

	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1061(cnum,reqNumber) -- ±¸¼¼±º ¾ÆÀú¾¾

req = reqNumber
random = SetRandom(cnum,0,100)



	if req == 1 then
		return 6,0,"ºÒ¿ì ÀÌ¿ôÀ» µµ¿ó½Ã´Ù.",10,"1000GP ±âºÎ",20,"10000GP ±âºÎ",30,"100000GP ±âºÎ",40,"1000000GP ±âºÎ",100,"10000000GP ±âºÎ"


	elseif req == 10 then

		if GetMoney(cnum) < 1000 then
			return 1,0,"µ·ÀÌ ¸ğÀÚ¸£Áö ¾Ê½À´Ï±î?"

		else
			AddMoney(cnum, -1000)
			return 1,0,"°í¸¿½À´Ï´Ù."
		end

	elseif req == 20 then

		if GetMoney(cnum) < 10000 then
			return 1,0,"µ·ÀÌ ¸ğÀÚ¸£Áö ¾Ê½À´Ï±î?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@±¸¼¼±º ¾ÆÀú¾¾¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 95 then
				AddMoney(cnum, -10000)
				return 1,0,"°í¸¿½À´Ï´Ù."


			elseif random >= 96 and random <= 100 then
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				AddMoney(cnum, -10000) -- 10000¿ø »èÁ¦
				return 1,0,"°í¸¿½À´Ï´Ù. ÂøÇÑ ¸¶À½À» °®°í ÀÖ±º¿ä. "

			else
				return 1,0,"¿À·ù 1"
			end
		end

	elseif req == 30 then

		if GetMoney(cnum) < 100000 then
			return 1,0,"µ·ÀÌ ¸ğÀÚ¸£Áö ¾Ê½À´Ï±î?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@±¸¼¼±º ¾ÆÀú¾¾¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 70 then
				AddMoney(cnum, -100000)
				return 1,0,"°í¸¿½À´Ï´Ù."


			elseif random >= 71 and random <= 98 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				return 1,0,"°í¸¿½À´Ï´Ù. ÂøÇÑ ¸¶À½À» °®°í ÀÖ±º¿ä. "

			elseif random >= 99 and random <= 100 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¿½À´Ï´Ù. º¹ ¹ŞÀ¸½Ç °Å¿¡¿ä!"

			else
				return 1,0,"¿À·ù 1"
			end
		end


	elseif req == 40 then

		if GetMoney(cnum) < 1000000 then
			return 1,0,"µ·ÀÌ ¸ğÀÚ¸£Áö ¾Ê½À´Ï±î?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@±¸¼¼±º ¾ÆÀú¾¾¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 20 then
				AddNPCSwitchCount(cnum, 590,1)
				AddMoney(cnum, -1000000)
				return 1,0,"°í¸¿½À´Ï´Ù."


			elseif random >= 21 and random <= 95 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				return 1,0,"°í¸¿½À´Ï´Ù. ÂøÇÑ ¸¶À½À» °®°í ÀÖ±º¿ä. "

			elseif random >= 96 and random <= 100 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¿½À´Ï´Ù. º¹ ¹ŞÀ¸½Ç °Å¿¡¿ä!"

			else
				return 1,0,"¿À·ù 1"
			end
		end


	elseif req == 100 then
		return 2,0,"Á¤¸» ÀÌ·¸°Ô Å« µ·À» ±âºÎ ÇÏ½Ã´Â °Ì´Ï±î??",50,"³×~"

	elseif req == 50 then

		if GetMoney(cnum) < 10000000 then
			return 1,0,"µ·ÀÌ ¸ğÀÚ¸£Áö ¾Ê½À´Ï±î?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@±¸¼¼±º ¾ÆÀú¾¾¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 75 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				return 1,0,"°í¸¿½À´Ï´Ù. ÂøÇÑ ¸¶À½À» °®°í ÀÖ±º¿ä. "

			elseif random >= 76 and random <= 97 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¿½À´Ï´Ù. º¹ ¹ŞÀ¸½Ç °Å¿¡¿ä! "

			elseif random >= 98 and random <= 100 then
				AddMoney(cnum, -10000000)
				AddNPCSwitchCount(cnum, 585, 1)
				AddItemCount(cnum,8600,1) -- Âü ÀßÇß¾î¿ä µµÀå
				return 1,0,"Çã¾ï.. ÀÌ·¸°Ô³ª ¸¹ÀÌ! Á¤¸» º¹ ¹ŞÀ¸½Ç °Ì´Ï´Ù."

			end
		end
	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1062(cnum,reqNumber) -- º¸Á¶ »êÅ¸

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 582) < 1 then -- º¸Á¶ »êÅ¸ Ã³À½ ´ëÈ­½Ã
			return 2,0,"¹ë·¯´Ô Á¦¹ß ºÎÅ¹ÀÌ ÀÖ¾î¿ä!",10,"¹«½¼ ÀÏÀÎµ¥?"

		elseif GetSwitchCount(cnum, 582) == 1 then
			return 2,0,"[¼±¹° ¹Ú½º 100°³]¿Í [Æ÷ÀåÁö 100°³]´Â ¸ğ¾Æ ¿À¼Ì³ª¿ä?",40,"¿©±â.."

		elseif GetSwitchCount(cnum, 582) > 1 then
			return 2,0,"È¤½Ã [¼±¹° ¹Ú½º 100°³]¿Í [Æ÷ÀåÁö 100°³]¸¦ ´õ °¡Á® ¿À¼Ì³ª¿ä?",40,"¿©±â.."

		elseif GetSwitchCount(cnum, 582) < 11 then
			return 1,0,"Á¤¸» °í¸¶¿ü¾î¿ä. ÀÌÁ¦ ¼±¹°À» ÃæºĞÈ÷ ¸¸µé ¼ö ÀÖ¾î¿ä."

		else
			return 1,0,"¿À·ù1"
		end

	elseif req == 10 then
		return 2,0,"¾Ç¸¶°è¿­ ¸ó½ºÅÍ ³à¼®µéÀÌ ÀÎ°£°ú ¿¤ÇÁ·Î º¯½ÅÀ» ÇØ¼­´Â ÀúÀÇ ¼±¹° Æ÷Àå µµ±¸¸¦ ÈÉÃÄ°¬Áö ¹¹¿¡¿ä. ³à¼®µéÀÌ °®°í °£ [¼±¹° ¹Ú½º] ¿Í [Æ÷ÀåÁö] ¸¦ °¢°¢ 100°³ ¾¿  Ã£¾Æ ÁÖ¼¼¿ä!",11,"¾Ë¾Ò¾î."


	elseif req == 11 then
		AddSwitchCount(cnum, 582, 1)
		return 1,0,"Á¤¸» °í¸¶¿ö¿ä!"



	elseif req == 40 then

	random = SetRandom(cnum,0,100)

		if GetItemCount(cnum, 8595, 0) < 100 or GetItemCount(cnum, 8596, 0) < 100  then -- ¼±¹°»óÀÚ/¸®º»²ö
			return 1,0,"°ÅÁş¸» ÇÏÁö ¸¶¼¼¿ä."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[ÀÎº¥Åä¸®]°¡ °¡µæÃ¡½À´Ï´Ù.@º¸Á¶ »êÅ¸¿¡°Ô¼­ ¾ÆÀÌÅÛÀ» ¹Ş±âÀ§ÇØ¼± [ÀÎº¥Åä¸®]°¡ ÃÖ¼ÒÇÑ 1Ä­ ÀÌ»ó ÀÖ¾î¾ß ÇÕ´Ï´Ù."

		else
			if random <= 1 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- ¼±¹°¹Ú½º »èÁ¦
				AddItemCount(cnum,8596,-100) -- Æ÷ÀåÁö »èÁ¦
				AddItemCount(cnum,8600,1) -- Âü ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¶¿ö¿ä! ´öºĞ¿¡ ±ŞÇÑ ¼±¹°»óÀÚ´Â ¸¸µé ¼ö ÀÖÀ» °Í °°¾Æ¿ä. ÀÌ µµÀåÀÌ ´ç½Å¿¡°Ô Çà¿îÀ» ÁÙ °Å¿¡¿ä!"

			elseif random >= 2 and random <= 17 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- ¼±¹°¹Ú½º »èÁ¦
				AddItemCount(cnum,8596,-100) -- Æ÷ÀåÁö »èÁ¦
				AddItemCount(cnum,8601,1) -- ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¶¿ö¿ä! ´öºĞ¿¡ ±ŞÇÑ ¼±¹°»óÀÚ´Â ¸¸µé ¼ö ÀÖÀ» °Í °°¾Æ¿ä. ÀÌ µµÀåÀÌ ´ç½Å¿¡°Ô Çà¿îÀ» ÁÙ °Å¿¡¿ä!"

			elseif random >= 18 and random <= 100 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- ¼±¹°¹Ú½º »èÁ¦
				AddItemCount(cnum,8596,-100) -- Æ÷ÀåÁö »èÁ¦
				AddItemCount(cnum,8602,1) -- Á¶±İ ÀßÇß¾î¿ä µµÀå
				return 1,0,"Á¤¸» °í¸¶¿ö¿ä! ´öºĞ¿¡ ±ŞÇÑ ¼±¹°»óÀÚ´Â ¸¸µé ¼ö ÀÖÀ» °Í °°¾Æ¿ä. ÀÌ µµÀåÀÌ ´ç½Å¿¡°Ô Çà¿îÀ» ÁÙ °Å¿¡¿ä!"

			else
				return 1,0,"¿À·ù 1"
			end
		end
	end
end



