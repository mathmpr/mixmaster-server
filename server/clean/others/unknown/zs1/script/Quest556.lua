function NPC_QUEST_1129(cnum, reqNumber)

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 2 then
		if GetSwitchCount(cnum, 599) < 1 then  -- ���Ͱ� ��������!(�̽��͸�) ���Ḧ �ߴ���
			if GetSwitchCount(cnum, 598) < 1 then -- ���Ͱ� ��������!(�̽��͸�) ������ �ߴ���
				if GetSwitchCount(cnum, 597) < 1 then -- ���Ͱ� ��������!(�Ĺ�) ���Ḧ �ߴ���
					if GetSwitchCount(cnum, 596) < 1 then -- ���Ͱ� ��������!(�Ĺ�) ������ �ߴ���
						if GetSwitchCount(cnum, 595) < 1 then -- ���Ͱ� ��������!(�Ǹ�) ���Ḧ �ߴ���
							if GetSwitchCount(cnum, 594) < 1 then -- ���Ͱ� ��������!(�Ǹ�) ������ �ߴ���
								if GetSwitchCount(cnum, 593) < 1 then -- ���Ͱ� ��������!(�巡��) ���Ḧ �ߴ���
									if GetSwitchCount(cnum, 592) < 1 then -- ���Ͱ� ��������!(�巡��) ������ ���ߴ���
										if GetSwitchCount(cnum, 591) < 1 then -- ������ �뵵 ���� ���Ḧ ���ߴ���
											if GetSwitchCount(cnum, 590) < 1 then -- ������ �뵵 ���� ������ ���ߴ���
												return 2,0,"Sudah lama sekali! "..name.."@Seperti baru kemarin kamu berburu Mutant Boar dan membawakan taringnya untukku! Haha. Selamat datang to Elysion.",2,"Terima kasih~ Dr. Jove!"
											else
												return 3,0,"Oh! "..name.."! Apa kamu telah selesai memeriksa patung batunya?",11,"Ya!",102,"Belum."
											end
										else	-- ����Ʈ(������ �뵵 ����) �Ϸ� ��
											return 2,0,""..name.."! Kami dipindahkan ke tempat yang pernah kamu periksa melalui patung batu bersama penjaga. Satu dari ras Dragon, Braki, menyerang kami meskipun kami menggunakan Dashabell Transformer!",21,"Ya."
										end
									else -- ���Ͱ� ��������!(�巡��) ���� ��
										return 2,0,""..name.."! Apa kamu membawa 10ea [Red floating stone piece]?",25,"Sure."
									end
								else	--  ����Ʈ(���Ͱ� ��������!(�巡��) �Ϸ� ��
									return 2,0,""..name.."! Kali ini tolong bawakan 10ea [Gray floating stone piece] dari ras monster Devil!",31,"Tidak masalah."
								end
							else -- ���Ͱ� ��������!(�Ǹ�) ���� ��
								return 2,0,""..name.."! Apa kamu membawa 10ea [Gray floating stone piece]?",32,"Ya"
							end
						else	--  ����Ʈ(���Ͱ� ��������!(�Ǹ�) �Ϸ� ��
							return 2,0,""..name.."! Kali ini tolong bawakan 10ea [Blue floating stone piece] dari ras monster Plant!",41,"Tidak masalah."
						end
					else
						return 2,0,""..name.."! Apa kamu membawa 10ea [Blue floating stone piece]?",42,"Ya"
					end
				else
					return 2,0,""..name.."! Kali ini tolong bawakan 10ea [Yellow floating stone piece] dari ras monster Mystery!",51,"Tidak masalah."
				end
			else
				return 2,0,""..name.."! Apa kamu membawa 10ea [Yellow floating stone piece]?",52,"Ya"
			end
		else
			if Lv < 85 then
				return 1,0,""..name.."! Mustahil untuk pergi ke tingkat selanjutnya meski memiliki cukupfloating stone pieces karena hanya Valor diatas Lv 85 yang diperbolehkan."
			else
				SetSwitchCount(cnum, 600, 2) -- 2�� �̵� ���� ���� 
				return 1,0,""..name.."! Berkat dirimu, dikumpulkan cukup energi untuk mengirimmu ke lantai berikutny. Gunakan batu apung warp disebelahmu!!"
			end
		end

		else
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end
	


	elseif req == 51 then
		StartQuest(cnum, 192)
		SetSwitchCount(cnum, 598, 1)
		return 1,0,"Oke! Maka, aku akan menunggu 10ea [Yellow floating stone piece]!"


	elseif req == 52 then -- ����Ʈ �Ϸ�(�̽��͸�) ���� �˻� �� ����
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8631, 0) < 10 then
				return 1,0,"Membutuhkan 10ea  [Yellow floating stone piece]. Periksa kembali!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 192)
				AddItemCount(cnum,8631,-10) -- [Ȳ�� �� ������ ����] 10�� ����
				AddItemCount(cnum,8617,10) -- [�ó� Ĩ�� ���� ����] 10�� ����
				SetSwitchCount(cnum, 599, 1) -- ���Ͱ� ��������!(�̽��͸�) ���� �Ϸ�
				return 1,0,"Terima kasih. Ambillah 10ea [Sinan healing potion] hasil teknologi Sinan. Kembalilah lagi nanti!"
			end
		end


	elseif req == 41 then
		StartQuest(cnum, 191)
		SetSwitchCount(cnum, 596, 1)
		return 1,0,"Oke! Maka, aku akan menunggu 10ea [Blue floating stone piece]!"


	elseif req == 42 then -- ����Ʈ �Ϸ�(�Ĺ�) ���� �˻� �� ����
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8628, 0) < 10 then
				return 1,0,"Membutuhkan 10ea  [Blue floating stone piece]. Periksa kembali!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 191)
				AddItemCount(cnum,8628,-10) -- [�Ķ� �� ������ ����] 10�� ����
				AddItemCount(cnum,8617,10) -- [�ó� Ĩ�� ���� ����] 10�� ����
				SetSwitchCount(cnum, 597, 1) -- ���Ͱ� ��������!(�Ĺ�) ���� �Ϸ�
				return 1,0,"Terima kasih. Ambillah 10ea [Sinan healing potion] hasil teknologi Sinan. Kembalilah lagi nanti!"
			end
		end


	elseif req == 31 then
		StartQuest(cnum, 190)
		SetSwitchCount(cnum, 594, 1)
		return 1,0,"Oke! Maka, aku akan menunggu 10ea [Gray floating stone piece]!"


	elseif req == 32 then -- ����Ʈ �Ϸ�(�Ǹ�) ���� �˻� �� ����
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8625, 0) < 10 then
				return 1,0,"Membutuhkan 10ea  [Gray floating stone piece]. Periksa kembali!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 190)
				AddItemCount(cnum,8625,-10) -- [ȸ�� �� ������ ����] 10�� ����
				AddItemCount(cnum,8617,10) -- [�ó� Ĩ�� ���� ����] 10�� ����
				SetSwitchCount(cnum, 595, 1) -- ���Ͱ� ��������!(�Ǹ�) ���� �Ϸ�
				return 1,0,"Terima kasih. Ambillah 10ea [Sinan healing potion] hasil teknologi Sinan. Kembalilah lagi nanti!"
			end
		end


	elseif req == 25 then -- ����Ʈ �Ϸ�(�巡��) ���� �˻� �� ����
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8622, 0) < 10 then
				return 1,0,"Membutuhkan 10ea  [Red floating stone piece]. Periksa kembali!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 189)
				AddItemCount(cnum,8622,-10) -- [���� �� ������ ����] 10�� ����
				AddItemCount(cnum,8617,10) -- [�ó� Ĩ�� ���� ����] 10�� ����
				SetSwitchCount(cnum, 593, 1) -- ���Ͱ� ��������!(�巡��) ���� �Ϸ�
				return 1,0,"Terima kasih. Ambillah 10ea [Sinan healing potion] hasil teknologi Sinan. Kembalilah lagi nanti!"
			end
		end


	elseif req == 21 then
		return 2,0,"Untungnya kami berhasil mengalahkan monster. Yang aneh adalah para monster mengenali kami.",22,"Hmm��"


	elseif req == 22 then
		return 2,0,"Kami menemukan monster yang menjatuhkan pieces of floating stone. Aku rasa berhubungan dengan hidup buatan dan batu apung.",23,"Aku mengerti"


	elseif req == 23 then
		return 2,0,"Bawakan aku 10ea [Red floating stone piece] dari ras monster Dragon!",24,"Oke. Tidak masalah."


	elseif req == 24 then
		StartQuest(cnum, 189)
		SetSwitchCount(cnum, 592, 1)
		return 1,0,"Oke! Jadi, aku akan menunggu untuk 10ea [Red floating stone piece]!"


	elseif req == 2 then
		return 2,0,"Lihatlah batu apung besar disana. Mengagumkan bukan? Mengapa Sinan pergi tinggalkan semua ini? Aku tak mengerti! Kuil ini tampak biasa, dan kadang tampak tidak biasa��",3,"Aku pikir juga demikian"


	elseif req == 3 then
		return 2,0,"Sebagai hasil penelitian, batu apung besar ini mengeluarkan energi yang membuat pulau ini melayang hingga seluruh Elysion. Tapi��",4,"Tapi�� apa?"


	elseif req == 4 then
		return 2,0,"Tapi, kekuatan batu apung ini mulai melemah hingga pulau ini perlahan mulai turun kedaratan!",5,"Hmm aku mengerti."


	elseif req == 5 then
		return 2,0,"Akan menjadi masalah besar! "..name.."! Dapatkah kamu membayangkan jika pulau ini jatuh ketanah? Dapat terjadi musibah mengerikan!",6,"Kamu benar!"


	elseif req == 6 then
		return 3,0,"Kita harus mencegah pulau ini terjatuh. "..name.."! Ayo bantu!",7,"Tentu.",101,"Maaf."


	elseif req == 7 then
		return 2,0,"Hebat! "..name.."! Kamu telah menjadi seorang Valor yang baik! Aku dan penjaga telah berkeliling disekitar sini selama beberapa hari. Ada tempat berbahaya yang harus dimasuki di ujung jalan empat cabang dari sini.",8,"Kenapa?"


	elseif req == 8 then
		return 2,0,"Karena aura jahat datang dari ujung jalan ini! Kamu akan merasa ngeri",9,"Aku mengerti"


	elseif req == 9 then
		return 3,0,""..name.."! Dapatkah kamu mengetahui fungsi dari patung batu? Aku pikir kamu dapat melakukannya.",10,"Tidak masalah.",101,"Maaf."


	elseif req == 10 then -- ����Ʈ ����(������ �뵵 ����)
		StartQuest(cnum, 188)
		SetSwitchCount(cnum, 590, 1)
		return 1,0,"Hebat! Nah, kembalilah setelah kamu mengetahuinya. Aku juga akan terus mencari"


	elseif req == 11 then -- ����Ʈ �Ϸ� ���� �˻�
		if GetSwitchCount(cnum, 586) < 1 or -- �巡�� ����
		   GetSwitchCount(cnum, 587) < 1 or -- �Ǹ� ����
                   GetSwitchCount(cnum, 588) < 1 or -- �Ĺ� ����
                   GetSwitchCount(cnum, 589) < 1 then -- �̽��͸� ����
			return 1,0,"Periksa seluruh 4 patung batu!"
		else
			return 2,0,"Apa!!! Patung batu memiliki fungsi warp selain tempat monster! Tidak dapat dipercaya. Terkadang, patung batu tampak menyeramkan",12,"Ya"
		end


	elseif req == 12 then -- ����Ʈ �Ϸ� �� ����
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
-- ����ġ�� ����~!
			EndQuest(cnum, 188)
			SetSwitchCount(cnum, 591, 10)
			AddItemCount(cnum,8617,10)
			return 1,0,"Potion ini dibuat oleh Sinan! Jumlah healing cukup banyak~ Cobalah~. Nah, aku perlu melakukan penelitian. Sampai nanti."
		end



	elseif req == 101 then -- ����Ʈ ����(������ �뵵 ����) �� �޽���
		return 1,0,""..name.."! Apa kamu datang untuk menolongku? Benua kita dalam masalah!"


	elseif req == 102 then -- ����Ʈ(������ �뵵 ����) ���� �� ������ �������� ���Ͽ��� �� �޽���
		return 1,0,""..name.."! Aku mengandalkanmu! Beritahu aku apa artinya patung batu!"

	end
end


function NPC_QUEST_1130(cnum, reqNumber)

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 3 then
		if GetSwitchCount(cnum, 601) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 599) < 1 then  -- ���Ͱ� ��������!(�̽��͸�) ���Ḧ �ߴ���
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating stone pieces."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu."
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh floating stone tiap warna?",5,"Ya"
		end
		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Sebagai hasil penelitian, aku akhirnya menemukan cara membuat floating gemstone! Gemstones memiliki energi lebih kuat dibandingkan pieces.",3,"Ya"


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating gemstone] 1ea, [Gray floating gemstone] 1ea, [Blue floating gemstone] 1ea dan [Yellow floating gemstone] 1ea padaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 193)
		SetSwitchCount(cnum, 601, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 95 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 95!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8623, 0) == 0 and
			   GetItemCount(cnum, 8626, 0) == 0 and
			   GetItemCount(cnum, 8629, 0) == 0 and
			   GetItemCount(cnum, 8632, 0) == 0 then
				return 1,0,"Butuh [Red floating gemstone] 1ea, [Gray floating gemstone] 1ea, [Blue floating gemstone] 1ea dan [Yellow floating gemstone] 1ea! Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 193)
				AddItemCount(cnum,8623,-1)
				AddItemCount(cnum,8626,-1)
				AddItemCount(cnum,8629,-1)
				AddItemCount(cnum,8632,-1)

				AddItemCount(cnum,8617,100) -- [�ó� Ĩ�� ���� ����] 100�� ����
				SetSwitchCount(cnum, 602, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 3) -- ���� ������ 3�� ����
				return 1,0,"Aku menghargainya! Ambillah 100ea [Sinan cheap healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai berikutnya!!"
			end
		end
	end
end




function NPC_QUEST_1131(cnum, reqNumber) -- �Һ�ڻ� 3��

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 4 then
		if GetSwitchCount(cnum, 603) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 602) < 1 then  -- 2�� ������ �޾Ҵ��� ����
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating stone pieces."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu."
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh 10es dari tiap warna floating gemstone?",5,"Ya"
		end

		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Apa kamu lupa bahwa floating gemstone terbuat dari pieces? Gemstones memiliki energi lebih kuat daripada pieces.",3,"Tentu tidak."


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating gemstone] 10ea, [Gray floating gemstone] 10ea, [Blue floating gemstone] 10ea dan [Yellow floating gemstone] 10ea padaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 194)
		SetSwitchCount(cnum, 603, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 105 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 105!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8623, 0) < 10 and
			   GetItemCount(cnum, 8626, 0) < 10 and
			   GetItemCount(cnum, 8629, 0) < 10 and
			   GetItemCount(cnum, 8632, 0) < 10 then
				return 1,0,"Maka, bawakan aku [Red floating gemstone] 10ea, [Gray floating gemstone] 10ea, [Blue floating gemstone] 10ea dan [Yellow floating gemstone] 10ea padaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk gemstone dari Grocery Merchant sekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 194)
				AddItemCount(cnum,8623,-10)
				AddItemCount(cnum,8626,-10)
				AddItemCount(cnum,8629,-10)
				AddItemCount(cnum,8632,-10)

				AddItemCount(cnum,8618,50) -- [�ó� ���� ����] 50�� ����
				SetSwitchCount(cnum, 604, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 4) -- ���� ������ 4�� ����
				return 1,0,"Aku menghargainya! Ambillah 50ea [Sinan healing potion]. Lebih baik daripada [Sinan cheap healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai berikutnya!!"
			end
		end
	end
end

function NPC_QUEST_1132(cnum, reqNumber) -- �Һ�ڻ� 4��

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 5 then
		if GetSwitchCount(cnum, 605) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 604) < 1 then  -- 3�� ������ �޾Ҵ��� ����
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating gemstones."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu"
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh floating Core tiap warna?",5,"Ya"
		end

		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Sebagai hasil penelitian, aku akhirnya berhasil menemukan bagaimana membuat floating Core! Core memiliki tenaga lebih kuat daripada gemstone.",3,"Ya"


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating Core] 1ea, [Gray floating Core] 1ea, [Blue floating Core] 1ea dan [Yellow floating Core] 1ea kepadaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 195)
		SetSwitchCount(cnum, 605, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 115 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 115!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8624, 0) == 0 and
			   GetItemCount(cnum, 8627, 0) == 0 and
			   GetItemCount(cnum, 8630, 0) == 0 and
			   GetItemCount(cnum, 8633, 0) == 0 then
				return 1,0,"Butuh [Red floating Core] 1ea, [Gray floating Core] 1ea, [Blue floating Core] 1ea dan [Yellow floating Core] 1ea! Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 195)
				AddItemCount(cnum,8624,-1)
				AddItemCount(cnum,8627,-1)
				AddItemCount(cnum,8630,-1)
				AddItemCount(cnum,8633,-1)

				AddItemCount(cnum,8618,100) -- [�ó� ���� ����] 100�� ����
				SetSwitchCount(cnum, 606, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 5) -- ���� ������ 5�� ����
				return 1,0,"Aku menghargainya! Ambillah 100ea [Sinan healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai 5!!"
			end
		end
	end
end



function NPC_QUEST_1133(cnum, reqNumber) -- �Һ�ڻ� 5��

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 6 then
		if GetSwitchCount(cnum, 607) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 606) < 1 then  -- 4�� ������ �޾Ҵ��� ����
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating gemstones."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu"
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh 10ea dari tiap warna floating Core?",5,"Ya"
		end

		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Apa kamu lupa bahwa floating Core terbuat dari gemstones? Core memiliki tenaga lebih kuat daripada gemstone.",3,"Tentu tidak."


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating Core] 10ea, [Gray floating Core] 10ea, [Blue floating Core] 10ea dan [Yellow floating Core] 10ea kepadaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 196)
		SetSwitchCount(cnum, 607, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 125 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 125!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8624, 0) < 10 and
			   GetItemCount(cnum, 8627, 0) < 10 and
			   GetItemCount(cnum, 8630, 0) < 10 and
			   GetItemCount(cnum, 8633, 0) < 10 then
				return 1,0,"Butuh [Red floating Core] 10ea, [Gray floating Core] 10ea, [Blue floating Core] 10ea dan [Yellow floating Core] 10ea! Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 196)
				AddItemCount(cnum,8624,-10)
				AddItemCount(cnum,8627,-10)
				AddItemCount(cnum,8630,-10)
				AddItemCount(cnum,8633,-10)

				AddItemCount(cnum,8619,50) -- [�ó� ���̽� ���� ����] 50�� ����
				SetSwitchCount(cnum, 608, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 6) -- ���� ������ 6�� ����
				return 1,0,"Aku menghargainya! Ambillah 50ea [Sinan nice healing potion] Lebih baik daripada [Sinan healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai 6!!"
			end
		end
	end
end


function NPC_QUEST_1134(cnum, reqNumber) -- �Һ�ڻ� 6��

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 7 then
		if GetSwitchCount(cnum, 609) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 608) < 1 then  -- 5�� ������ �޾Ҵ��� ����
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating Cores."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu"
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh 20ea dari tiap warna floating Core?",5,"Ya"
		end

		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Apa kamu lupa bahwa floating Core terbuat dari gemstones? Core memiliki tenaga lebih kuat daripada gemstone.",3,"Tentu tidak."


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating Core] 20ea, [Gray floating Core] 20ea, [Blue floating Core] 20ea dan [Yellow floating Core] 20ea kepadaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 197)
		SetSwitchCount(cnum, 609, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 135 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 135!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8624, 0) < 20 and
			   GetItemCount(cnum, 8627, 0) < 20 and
			   GetItemCount(cnum, 8630, 0) < 20 and
			   GetItemCount(cnum, 8633, 0) < 20 then
				return 1,0,"Butuh [Red floating Core] 20ea, [Gray floating Core] 20ea, [Blue floating Core] 20ea dan [Yellow floating Core] 20ea! Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 197)
				AddItemCount(cnum,8624,-20)
				AddItemCount(cnum,8627,-20)
				AddItemCount(cnum,8630,-20)
				AddItemCount(cnum,8633,-20)

				AddItemCount(cnum,8619,100) -- [�ó� ���̽� ���� ����] 100�� ����
				SetSwitchCount(cnum, 610, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 7) -- ���� ������ 7�� ����
				return 1,0,"Aku menghargainya! Ambillah 100ea [Sinan nice healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai 7!!"
			end
		end
	end
end


function NPC_QUEST_1135(cnum, reqNumber) -- �Һ�ڻ� 7��

req = reqNumber
name = GetHeroName(cnum)
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 600) < 8 then
		if GetSwitchCount(cnum, 611) < 1 then -- ����Ʈ�� �޾Ҵ���
			if GetSwitchCount(cnum, 610) < 1 then  -- 6�� ������ �޾Ҵ��� ����
				return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating Cores."
			else
				return 2,0,""..name.."! Kamu datang kesini! Tempat ini penuh monster berbahaya! Namun kita tetap harus mengumpulkan pieces of floating stone!",2,"Tentu"
			end
		else
			return 2,0,""..name.."! Apa kamu telah memperoleh 40ea dari tiap warna floating Core?",5,"Ya"
		end

		else 	
			return 1,0,""..name.."! Bagaimana dengan perburuan monsternya?"
		end


	elseif req == 2 then
		return 2,0,"Apa kamu lupa bahwa floating Core terbuat dari gemstones? Core memiliki tenaga lebih kuat daripada gemstone.",3,"Tentu tidak."


	elseif req == 3 then
		return 2,0,"Maka, bawakan aku [Red floating Core] 40ea, [Gray floating Core] 40ea, [Blue floating Core] 40ea dan [Yellow floating Core] 40ea kepadaku. Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!",4,"Aku mengerti"


	elseif req == 4 then
		StartQuest(cnum, 198)
		SetSwitchCount(cnum, 611, 1)
		return 1,0,"Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"


	elseif req == 5 then -- ����Ʈ ����
		if Lv < 145 then
			return 1,0,"Maaf, kamu tidak siap pergi ke lantai berikutnya. Kembalilah setelah kamu mencapai Lv 145!"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[Inventory] penuh!@Kosongkan setidaknya satu ruang untuk menerima benda dari Dr. Jove"
		else
			if GetItemCount(cnum, 8624, 0) < 40 and
			   GetItemCount(cnum, 8627, 0) < 40 and
			   GetItemCount(cnum, 8630, 0) < 40 and
			   GetItemCount(cnum, 8633, 0) < 40 then
				return 1,0,"Butuh [Red floating Core] 40ea, [Gray floating Core] 40ea, [Blue floating Core] 40ea dan [Yellow floating Core] 40ea! Kamu dapat memperoleh Book of Production dan bahan dasar untuk Core dari Grocery Merchant disekitar sini!"
			else
-- ����ġ�� ����
				EndQuest(cnum, 198)
				AddItemCount(cnum,8624,-40)
				AddItemCount(cnum,8627,-40)
				AddItemCount(cnum,8630,-40)
				AddItemCount(cnum,8633,-40)

				AddItemCount(cnum,8620,100) -- [�ó� ��� ���� ����] 100�� ����
				SetSwitchCount(cnum, 612, 1) -- �������� ��ƶ�!
				SetSwitchCount(cnum, 600, 8) -- ���� ������ 8�� ����
				return 1,0,"Aku menghargainya! Ambillah 100ea [Sinan super healing potion]. Lebih baik daripada [Sinan nice healing potion]. Gunakan batu apung warp disebelahmu untuk pergi ke lantai 8!!"
			end
		end
	end
end


function NPC_QUEST_1136(cnum, reqNumber) -- �Һ�ڻ� 8��

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 612) < 1 then  -- 7�� ������ �޾Ҵ��� ����
			return 1,0,""..name.."! Bagaimana kamu sampai disini? Batu apung disebelahku bekerja jika kamu memiliki banyak floating Cores."
		else
			return 1,0,""..name.."! Kamu telah datang! Terima kasih karena telah mengumpulkan floating stone. Aku mencoba agar Elysion tidak jatuh kedaratan. Namun sepertinya, telah mencapai batas meski kita menggunakan floating Cores. Aku harus meneliti lebih lanjut untuk menemukan pemecahannya."
		end
	else
		return 0
	end
end