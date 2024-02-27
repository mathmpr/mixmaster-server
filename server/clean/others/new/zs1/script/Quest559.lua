function NPC_QUEST_1212(cnum, reqNumber)

req = reqNumber

-- ���� ����
RandMonRace = SetRandom(cnum, 20, 27)


-- ���
CostGp1 = 10000
CostGp2 = 25000
CostGp3 = 50000
CostGp4 = 100000
CostGp5 = 500000
CostGp6 = 1000000


-- ��� ������
-- [1~50]
RaceItem10 = 538
boxterItem10 = 598
elysionItem10 = 544
HugeDragonItem10 = 550
HugeDevilItem10 = 551
HugeBeastItem10 = 552
HugeBirdItem10 = 553
HugeInsectItem10 = 554
HugePlantItem10 = 555
HugeMysteryItem10 = 556
HugeMetalItem10 = 557

-- [51~75]
RaceItem11 = 539
boxterItem11 = 599
elysionItem11 = 545
HugeDragonItem11 = 558
HugeDevilItem11 = 559
HugeBeastItem11 = 560
HugeBirdItem11 = 561
HugeInsectItem11 = 562
HugePlantItem11 = 563
HugeMysteryItem11 = 564
HugeMetalItem11 = 565


-- [76~99]
RaceItem12 = 540
boxterItem12 = 535
elysionItem12 = 546
HugeDragonItem12 = 566
HugeDevilItem12 = 567
HugeBeastItem12 = 568
HugeBirdItem12 = 569
HugeInsectItem12 = 570
HugePlantItem12 = 571
HugeMysteryItem12 = 572
HugeMetalItem12 = 573


-- [100~125]
RaceItem13 = 541
boxterItem13 = 536
elysionItem13 = 547
HugeDragonItem13 = 574
HugeDevilItem13 = 575
HugeBeastItem13 = 576
HugeBirdItem13 = 577
HugeInsectItem13 = 578
HugePlantItem13 = 579
HugeMysteryItem13 = 580
HugeMetalItem13 = 581

-- [125~200]
RaceItem14 = 542
boxterItem14 = 537
elysionItem14 = 548
HugeDragonItem14 = 582
HugeDevilItem14 = 583
HugeBeastItem14 = 584
HugeBirdItem14 = 585
HugeInsectItem14 = 586
HugePlantItem14 = 587
HugeMysteryItem14 = 588
HugeMetalItem14 = 589

-- [����]
RaceItem15 = 543
boxterItem15 = 537
elysionItem15 = 549
HugeDragonItem15 = 590
HugeDevilItem15 = 591
HugeBeastItem15 = 592
HugeBirdItem15 = 593
HugeInsectItem15 = 594
HugePlantItem15 = 595
HugeMysteryItem15 = 596
HugeMetalItem15 = 597


-- [1~50]
-- �ڽ���
boxter10 = 979

-- �����ÿ� Ch2 ����
elysion10 = 1026
elysion20 = 1029

-- �Ŵ� �⺻��
HugeMon10 = 1057
HugeMon20 = 1063
HugeMon30 = 1069
HugeMon40 = 1075
HugeMon50 = 1081
HugeMon60 = 1087
HugeMon70 = 1093
HugeMon80 = 1099

-- �巡��
dragon10 = 1
dragon20 = 25
dragon30 = 29
dragon40 = 263
dragon50 = 33
dragon60 = 41
dragon70 = 266
dragon80 = 37
dragon90 = 45

-- �Ǹ�
devil10 = 2
devil20 = 61
devil30 = 216
devil40 = 262
devil50 = 73
devil60 = 196
devil70 = 265
devil80 = 81
devil90 = 69

-- ����
beast10 = 3
beast20 = 220
beast30 = 663
beast40 = 664
beast50 = 223
beast60 = 105
beast70 = 681
beast80 = 224
beast90 = 692

-- ��
bird10 = 4
bird20 = 125
bird30 = 225
bird40 = 137
bird50 = 227
bird60 = 141
bird70 = 928
bird80 = 145
bird90 = 738

-- ����
insect10 = 5
insect20 = 229
insect30 = 230
insect40 = 231
insect50 = 169
insect60 = 618
insect70 = 944
insect80 = 340
insect90 = 624

-- �Ĺ�
plant10 = 204
plant20 = 238
plant30 = 240
plant40 = 800
plant50 = 819
plant60 = 953
plant70 = 241
plant80 = 242
plant90 = 457

-- �̽��͸�
mystery10 = 205
mystery20 = 244
mystery30 = 273
mystery40 = 341
mystery50 = 676
mystery60 = 841
mystery70 = 938
mystery80 = 962
mystery90 = 251

-- ��Ż
metal10 = 206
metal20 = 258
metal30 = 272
metal40 = 259
metal50 = 541
metal60 = 327
metal70 = 971
metal80 = 260
metal90 = 748


-- [51~75]
-- �ڽ���
boxter11 = 980


-- �����ÿ� Ch2 ����
elysion11 = 1039
elysion21 = 1040

-- �Ŵ� �⺻��
HugeMon11 = 1058
HugeMon21 = 1064
HugeMon31 = 1070
HugeMon41 = 1076
HugeMon51 = 1082
HugeMon61 = 1088
HugeMon71 = 1094
HugeMon81 = 1100

-- �巡��
dragon11 = 490
dragon21 = 574
dragon31 = 45
dragon41 = 207
dragon51 = 902
dragon61 = 328
dragon71 = 585
dragon81 = 734
dragon91 = 646

-- �Ǹ�
devil11 = 81
devil21 = 655
devil31 = 911
devil41 = 209
devil51 = 218
devil61 = 261
devil71 = 329
devil81 = 71
devil91 = 299

-- ����
beast11 = 629
beast21 = 708
beast31 = 63
beast41 = 682
beast51 = 724
beast61 = 810
beast71 = 27
beast81 = 687
beast91 = 605

-- ��
bird11 = 145
bird21 = 738
bird31 = 271
bird41 = 211
bird51 = 929
bird61 = 283
bird71 = 267
bird81 = 540
bird91 = 282

-- ����
insect11 = 340
insect21 = 173
insect31 = 945
insect41 = 333
insect51 = 615
insect61 = 620
insect71 = 625
insect81 = 322
insect91 = 946

-- �Ĺ�
plant11 = 242
plant21 = 242
plant31 = 457
plant41 = 20
plant51 = 270
plant61 = 801
plant71 = 820
plant81 = 954
plant91 = 326

-- �̽��͸�
mystery11 = 251
mystery21 = 635
mystery31 = 677
mystery41 = 815
mystery51 = 963
mystery61 = 316
mystery71 = 389
mystery81 = 332
mystery91 = 355

-- ��Ż
metal11 = 327
metal21 = 260
metal31 = 972
metal41 = 268
metal51 = 542
metal61 = 749
metal71 = 354
metal81 = 281
metal91 = 317

-- [76~99]
-- �ڽ���
boxter12 = 981

-- �����ÿ� Ch2 ����
elysion12 = 1042
elysion22 = 1043

-- �Ŵ� �⺻��
HugeMon12 = 1059
HugeMon22 = 1065
HugeMon32 = 1071
HugeMon42 = 1077
HugeMon52 = 1083
HugeMon62 = 1089
HugeMon72 = 1095
HugeMon82 = 1101

-- �巡��
dragon12 = 903
dragon22 = 492
dragon32 = 571
dragon42 = 581
dragon52 = 586
dragon62 = 824
dragon72 = 287
dragon82 = 833
dragon92 = 335

-- �Ǹ�
devil12 = 329
devil22 = 71
devil32 = 651
devil42 = 656
devil52 = 299
devil62 = 838
devil72 = 336
devil82 = 913
devil92 = 860

-- ����
beast12 = 64
beast22 = 357
beast32 = 567
beast42 = 725
beast52 = 806
beast62 = 811
beast72 = 28
beast82 = 55
beast92 = 697

-- ��
bird12 = 211
bird22 = 283
bird32 = 267
bird42 = 540
bird52 = 930
bird62 = 282
bird72 = 740
bird82 = 353
bird92 = 304

-- ����
insect12 = 322
insect22 = 314
insect32 = 946
insect42 = 616
insect52 = 626
insect62 = 293
insect72 = 552
insect82 = 375
insect92 = 338

-- �Ĺ�
plant12 = 326
plant22 = 802
plant32 = 821
plant42 = 955
plant52 = 309
plant62 = 309
plant72 = 851
plant82 = 803
plant92 = 315

-- �̽��͸�
mystery12 = 355
mystery22 = 636
mystery32 = 940
mystery42 = 964
mystery52 = 250
mystery62 = 864
mystery72 = 296
mystery82 = 867
mystery92 = 817

-- ��Ż
metal12 = 542
metal22 = 749
metal32 = 354
metal42 = 281
metal52 = 317
metal62 = 973
metal72 = 298
metal82 = 750
metal92 = 279

-- [100~125]
-- �ڽ���
boxter13 = 982

-- �����ÿ� Ch2 ����
elysion13 = 1031
elysion23 = 1044

-- �Ŵ� �⺻��
HugeMon13 = 1060
HugeMon23 = 1066
HugeMon33 = 1072
HugeMon43 = 1078
HugeMon53 = 1084
HugeMon63 = 1090
HugeMon73 = 1096
HugeMon83 = 1102

-- �巡��
dragon13 = 335
dragon23 = 826
dragon33 = 828
dragon43 = 493
dragon53 = 587
dragon63 = 736
dragon73 = 288
dragon83 = 372
dragon93 = 831

-- �Ǹ�
devil13 = 839
devil23 = 376
devil33 = 845
devil43 = 305
devil53 = 844
devil63 = 74
devil73 = 422
devil83 = 652
devil93 = 842

-- ����
beast13 = 66
beast23 = 532
beast33 = 684
beast43 = 807
beast53 = 812
beast63 = 30
beast73 = 56
beast83 = 632
beast93 = 378

-- ��
bird13 = 353
bird23 = 931
bird33 = 304
bird43 = 495
bird53 = 380
bird63 = 313
bird73 = 384
bird83 = 742
bird93 = 555

-- ����
insect13 = 293
insect23 = 552
insect33 = 947
insect43 = 375
insect53 = 338
insect63 = 622
insect73 = 627
insect83 = 294
insect93 = 360

-- �Ĺ�
plant13 = 803
plant23 = 822
plant33 = 956
plant43 = 315
plant53 = 854
plant63 = 331
plant73 = 850
plant83 = 554
plant93 = 381

-- �̽��͸�
mystery13 = 867
mystery23 = 817
mystery33 = 872
mystery43 = 373
mystery53 = 870
mystery63 = 420
mystery73 = 301
mystery83 = 383
mystery93 = 865

-- ��Ż
metal13 = 298
metal23 = 279
metal33 = 374
metal43 = 496
metal53 = 751
metal63 = 379
metal73 = 280
metal83 = 975
metal93 =307

-- [126~200]
-- �ڽ���
boxter14 = 983

-- �����ÿ� Ch2 ����
elysion14 = 1013
elysion24 = 1018

-- �Ŵ� �⺻��
HugeMon14 = 1061
HugeMon24 = 1067
HugeMon34 = 1073
HugeMon44 = 1079
HugeMon54 = 1085
HugeMon64 = 1091
HugeMon74 = 1097
HugeMon84 = 1103

-- �巡��
dragon14 = 832
dragon24 = 834
dragon34 = 836
dragon44 = 853
dragon54 = 835
dragon64 = 827
dragon74 = 825
dragon84 = 876
dragon94 = 830

-- �Ǹ�
devil14 = 840
devil24 = 863
devil34 = 848
devil44 = 841
devil54 = 874
devil64 = 847
devil74 = 849
devil84 = 846
devil94 = 837

-- ����
beast14 = 643
beast24 = 924
beast34 = 339
beast44 = 878
beast54 = 430
beast64 = 432
beast74 = 699
beast84 = 711
beast94 = 926

-- ��
bird14 = 555
bird24 = 324
bird34 = 877
bird44 = 424
bird54 = 934
bird64 = 364
bird74 = 431
bird84 = 292
bird94 = 935

-- ����
insect14 = 627
insect24 = 294
insect34 = 360
insect44 = 385
insect54 = 306
insect64 = 323
insect74 = 330
insect84 = 550
insect94 = 951

-- �Ĺ�
plant14 = 852
plant24 = 855
plant34 = 856
plant44 = 857
plant54 = 858
plant64 = 300
plant74 = 368
plant84 = 428
plant94 = 633

-- �̽��͸�
mystery14 = 866
mystery24 = 549
mystery34 = 875
mystery44 = 868
mystery54 = 869
mystery64 = 873
mystery74 = 871
mystery84 = 308
mystery94 = 557

-- ��Ż
metal14 = 307
metal24 = 425
metal34 = 337
metal44 = 879
metal54 = 363
metal64 = 560
metal74 = 371
metal84 = 978
metal94 = 280

-- [���� ����]
-- �ڽ���
boxter15 = 983

-- �����ÿ� Ch2 ����
elysion15 = 1016
elysion25 = 1017

-- �Ŵ� �⺻��
HugeMon15 = 1062
HugeMon25 = 1068
HugeMon35 = 1074
HugeMon45 = 1080
HugeMon55 = 1086
HugeMon65 = 1092
HugeMon75 = 1098
HugeMon85 = 1104

-- �巡��
dragon15 = 830
dragon25 = 285
dragon35 = 908
dragon45 = 366
dragon55 = 859
dragon65 = 829
dragon75 = 876
dragon85 = 827
dragon95 = 556

-- �Ǹ�
devil15 = 840
devil25 = 917
devil35 = 429
devil45 = 863
devil55 = 848
devil65 = 841
devil75 = 370
devil85 = 874
devil95 = 559

-- ����
beast15 = 711
beast25 = 699
beast35 = 430
beast45 = 432
beast55 = 358
beast65 = 878
beast75 = 695
beast85 = 691
beast95 = 643

-- ��
bird15 = 292
bird25 = 431
bird35 = 364
bird45 = 934
bird55 = 424
bird65 = 877
bird75 = 324
bird85 = 555
bird95 = 384

-- ����
insect15 = 550
insect25 = 330
insect35 = 323
insect45 = 950
insect55 = 360
insect65 = 627
insect75 = 294
insect85 = 951
insect95 = 622

-- �Ĺ�
plant15 = 852
plant25 = 300
plant35 = 855
plant45 = 856
plant55 = 368
plant65 = 428
plant75 = 857
plant85 = 633
plant95 = 858

-- �̽��͸�
mystery15 = 866
mystery25 = 849
mystery35 = 875
mystery45 = 868
mystery55 = 369
mystery65 = 558
mystery75 = 426
mystery85 = 869
mystery95 = 557

-- ��Ż
metal15 = 978
metal25 = 371
metal35 = 560
metal45 = 363
metal55 = 879
metal65 = 337
metal75 = 425
metal85 = 307
metal95 = 280



	if req == 1 then
		if GetSwitchCount(cnum, 666) < 1 then
			return 2,0,"ũũ..["..GetHeroName(cnum).."]..�� ���� ��ȯ��@���� �Ը��̴�..�ٵ� ���� ���� �׸��ڶ�� �θ���..�� �׷����� �𸣰����� ����..ũũ..",2,"�� �̸��� ��� ����?"
		else
			return 8,0,"ũũ..["..GetHeroName(cnum).."]...���͸� ��ȯ�� �غ� �ƴ�....��ȯ�� ������ ���� �븦 ����..�밭 ����� ���� ��� ��ȯ�� ����...��ȯ ����� �Ʒ� [���� ��ȯ ���]�� �����ϰ�..ũũ",8,"[���� ��ȯ ���]",9,"[1~50]",10,"[51~75]",11,"[76~99]",12,"[100~125]",13,"[126~200]",14,"[�����][���� ����]"
		end

	elseif req == 2 then
		return 2,0,"ũũ..�׷� �� �� �� ����..���� ���⿡ �� �Դ��� �˰��ֳ�?..ũũ...�������� �ɽ����ϴ� ���� �뷯���� ��̰� ���ֱ� ���ؼ���..ũũ",3,"��"

	elseif req == 3 then
		return 2,0,"�� ���ϴ� �ͽ������͵� ������ ���� �� ����..���������������� ��° ��¥ �뷯�� �ۿ� ���� �� ����....ũũ",4,"�׷�����?"

	elseif req == 4 then
		return 2,0,"�׷��� ���񿡰� ����ִ� ������ �Ϸ���...",5,"��ǰ���?"

	elseif req == 5 then
		return 2,0,"�� ���� ��ȯ��...���� ���ݲ� ���ƿ� ���� ���� �߿� �� � ���Ͷ� ��ȯ�� �� �ִ�. �Դٰ� �������� ���� ��� �� �� ��û�� ����ġ�� ���� �༮�̳�..���� �������� ����ϴ� ��鵵 ��ȯ ���� �� ����...ũũ",6,"��ȯ���ּ���!"

	elseif req == 6 then
		return 2,0,"ũũũ..["..GetHeroName(cnum).."]...â���ϰ� �� �׷���...�ŷ�!..���󿡴� ��¥�� ���� �� �𸣴ٴ�...��..��..�����ÿ¿��� ���ٴ� [���� �� ������]�� �ʿ��ϴ�..�ƴϸ� �װ� �� �� �ִ� GP �����..���?..ũũ ",7,"���ƿ�!"

	elseif req == 7 then
		SetSwitchCount(cnum, 666, 1)
		return 2,0,"ũũ...����..��� �����̱�..[���� �� ������ ����], [���� �� ������ ����]�ƴϸ� GP�� �������� �ȴ�..��� ������ ���� �� ���� ���͸� ��ȯ������!...ũũ",100,"��. �ٽ� �ðԿ�!"

  elseif req == 100 then
    return 0
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 8 then
    return 3,0,"[���� �� ������]���� �����ϰڳ�? �ƴϸ� [GP]�� �����ϰڳ�?",15,"[���� �� ������]",16,"[GP]"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  elseif req == 15 then
    return 2,0,"[���� �� ������]���� �����ϸ�@[1~50]:[���� �� ������ ����]5��@[51~75]:[���� �� ������ ����]25��@[76~99]:[���� �� ������ ����]50��@[100~125]:[���� �� ������ ����]100��@[126~200]:[���� �� ������ ����]1��@[�����][���� ����]:[���� �� ������ ����]5��",1,"��������"

  elseif req == 16 then
    return 2,0,"[GP]�� �����ϸ�@[1~50]:"..CostGp1.."GP@[51~75]:"..CostGp2.."GP@[76~99]:"..CostGp3.."GP@[100~125]:"..CostGp4.."GP@[126~200]:"..CostGp5.."GP@[�����][���� ����]:"..CostGp6.."",1,"��������"

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 9 then -- [1~50]  SetSwitchCount(cnum, 778, 1)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 5��? �ƴϸ� "..CostGp1.."GP? ũũ..� �ų�?",30,""..CostGp1.." GP",31,"[���� �� ������ ����] 5��",1,"��������"

  elseif req == 30 then
    if GetMoney(cnum) >= CostGp1 then
      AddMoney(cnum,-CostGp1)
      SetSwitchCount(cnum, 778, 1)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..���� "..CostGp1.."GP�� ���°ǰ�?.."
    end

  elseif req == 31 then
    if GetItemCount(cnum,8622,0) >= 5 then
      AddItemCount(cnum, 8622, -5)
      SetSwitchCount(cnum, 778, 1)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 5���� ���µ�?...�� �����.."
    end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 10 then -- [51~75]       SetSwitchCount(cnum, 778, 2)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 25��? �ƴϸ� "..CostGp2.."GP? ũũ..� �ų�?",32,""..CostGp2.." GP",33,"[���� �� ������ ����] 25��",1,"��������"

  elseif req == 32 then
    if GetMoney(cnum) >= CostGp2 then
      AddMoney(cnum,-CostGp2)
      SetSwitchCount(cnum, 778, 2)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum)..".."..CostGp2.."GP�� ���°ǰ�?.."
    end

  elseif req == 33 then
    if GetItemCount(cnum,8622,0) >= 25 then
      AddItemCount(cnum, 8622, -25)
      SetSwitchCount(cnum, 778, 2)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 25���� ���µ�?...�� �����.."
    end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 11 then -- [76~99]       SetSwitchCount(cnum, 778, 3)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 50��? �ƴϸ� "..CostGp3.."GP? ũũ..� �ų�?",34,""..CostGp3.." GP",35,"[���� �� ������ ����] 50��",1,"��������"

  elseif req == 34 then
    if GetMoney(cnum) >= CostGp3 then
      AddMoney(cnum,-CostGp3)
      SetSwitchCount(cnum, 778, 3)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum)..".."..CostGp3.."GP�� ���°ǰ�?.."
    end

  elseif req == 35 then
    if GetItemCount(cnum,8622,0) >= 50 then
      AddItemCount(cnum, 8622, -50)
      SetSwitchCount(cnum, 778, 3)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 50���� ���µ�?...�� �����.."
    end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 12 then -- [100~125]       SetSwitchCount(cnum, 778, 4)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 100��? �ƴϸ� "..CostGp4.."GP? ũũ..� �ų�?",36,""..CostGp4.." GP",37,"[���� �� ������ ����] 100��",1,"��������"

  elseif req == 36 then
    if GetMoney(cnum) >= CostGp4 then
      AddMoney(cnum,-CostGp4)
      SetSwitchCount(cnum, 778, 4)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum)..".."..CostGp4.."GP�� ���°ǰ�?.."
    end

  elseif req == 37 then
    if GetItemCount(cnum,8622,0) >= 100 then
      AddItemCount(cnum, 8622, -100)
      SetSwitchCount(cnum, 778, 4)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 100���� ���µ�?...�� �����.."
    end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 13 then -- [126~200]       SetSwitchCount(cnum, 778, 5)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 1��? �ƴϸ� "..CostGp5.."GP? ũũ..� �ų�?",38,""..CostGp5.." GP",39,"[���� �� ������ ����] 1��",1,"��������"

  elseif req == 38 then
    if GetMoney(cnum) >= CostGp5 then
      AddMoney(cnum,-CostGp5)
      SetSwitchCount(cnum, 778, 5)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum)..".."..CostGp5.."GP�� ���°ǰ�?.."
    end

  elseif req == 39 then
    if GetItemCount(cnum,8623,0) >= 1 then
      AddItemCount(cnum, 8623, -1)
      SetSwitchCount(cnum, 778, 5)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 1���� ���µ�?...�� �����.."
    end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  elseif req == 14 then -- [���� ����]       SetSwitchCount(cnum, 778, 6)
    return 4,0,"���� ��ȯ ����� �������� �����ϰڳ�? [���� �� ������ ����] 5��? �ƴϸ� "..CostGp6.."GP? ũũ..� �ų�?",40,""..CostGp6.." GP",41,"[���� �� ������ ����] 5��",1,"��������"

  elseif req == 40 then
    if GetMoney(cnum) >= CostGp6 then
      AddMoney(cnum,-CostGp6)
      SetSwitchCount(cnum, 778, 6)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum)..".."..CostGp6.."GP�� ���°ǰ�?.."
    end

  elseif req == 41 then
    if GetItemCount(cnum,8623,0) >= 5 then
      AddItemCount(cnum, 8623, -5)
      SetSwitchCount(cnum, 778, 6)
      return 10,0,"ũũ.."..GetHeroName(cnum).."..��..�� ���͸� ��ȯ�� �غ� �ƴ�....Ư���� ��ȯ�� ������ �迭�� ������ �� �ֵ��� ����..����...ũũ..@@Ư���� ���� ���������ʴ� ������ ���� ��ȯ������",RandMonRace,"[���� �迭]",20,"[�巡��]",21,"[�Ǹ�]",22,"[����]",23,"[��]",24,"[����]",25,"[�Ĺ�]",26,"[�̽��͸�]",27,"[��Ż]"
    else
      return 1,0,""..GetHeroName(cnum).."..�峭���ڴ°ǰ�?..[���� �� ������ ����] 5���� ���µ�?...�� �����.."
    end

----------------------------------------------------------------- [���� ���� �� ��� ���� ��] ---------------------------------------------------------------------------

  elseif req == 20 then -- [�巡��]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
    
   if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."   
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1% 
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeDragonItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeDragonItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1 
        AddMonster(cnum, 1212, dragon10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2 
        AddMonster(cnum, 1212, dragon20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3 
        AddMonster(cnum, 1212, dragon30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, dragon40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5 
        AddMonster(cnum, 1212, dragon50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6 
        AddMonster(cnum, 1212, dragon60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7 
        AddMonster(cnum, 1212, dragon70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8 
        AddMonster(cnum, 1212, dragon80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9 
        AddMonster(cnum, 1212, dragon90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
      
    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."   
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeDragonItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeDragonItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, dragon11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, dragon21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, dragon31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, dragon41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, dragon51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, dragon61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, dragon71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, dragon81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, dragon91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeDragonItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeDragonItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, dragon12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, dragon22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, dragon32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, dragon42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, dragon52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, dragon62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, dragon72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, dragon82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, dragon92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeDragonItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeDragonItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, dragon13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, dragon23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, dragon33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, dragon43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, dragon53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, dragon63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, dragon73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, dragon83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, dragon93, 0, RandMonCnt, 0, RaceItem13, 1)
      end

    return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeDragonItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeDragonItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, dragon14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, dragon24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, dragon34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, dragon44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, dragon54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, dragon64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, dragon74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, dragon84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, dragon94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeDragonItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeDragonItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, dragon15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, dragon25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, dragon35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, dragon45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, dragon55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, dragon65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, dragon75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, dragon85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, dragon95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end
    


  elseif req == 21 then -- [�Ǹ�]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)


    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeDevilItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeDevilItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, devil10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, devil20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, devil30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, devil40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeDevilItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeDevilItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, devil11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, devil21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, devil31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, devil41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeDevilItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeDevilItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, devil12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, devil22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, devil32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, devil42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeDevilItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeDevilItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, devil13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, devil23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, devil33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, devil43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeDevilItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeDevilItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, devil14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, devil24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, devil34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, devil44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 7%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeDevilItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeDevilItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, devil15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, devil25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, devil35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, devil45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, devil55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, devil65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, devil75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, devil85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, devil95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  elseif req == 22 then -- [����]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeBeastItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeBeastItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, beast10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, beast20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, beast30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, beast40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeBeastItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeBeastItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, beast11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, beast21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, beast31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, beast41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeBeastItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeBeastItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, beast12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, beast22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, beast32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, beast42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeBeastItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeBeastItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, beast13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, beast23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, beast33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, beast43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeBeastItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeBeastItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, beast14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, beast24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, beast34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, beast44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeBeastItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeBeastItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, beast15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, beast25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, beast35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, beast45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, beast55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, beast65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, beast75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, beast85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, beast95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end


  elseif req == 23 then -- [��]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeBirdItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeBirdItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, bird10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, bird20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, bird30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, bird40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeBirdItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeBirdItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, bird11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, bird21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, bird31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, bird41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeBirdItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeBirdItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, bird12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, bird22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, bird32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, bird42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeBirdItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeBirdItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, bird13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, bird23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, bird33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, bird43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeBirdItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeBirdItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, bird14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, bird24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, bird34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, bird44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeBirdItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeBirdItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, bird15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, bird25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, bird35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, bird45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, bird55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, bird65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, bird75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, bird85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, bird95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  elseif req == 24 then -- [����]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeInsectItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeInsectItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, insect10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, insect20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, insect30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, insect40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeInsectItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeInsectItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, insect11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, insect21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, insect31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, insect41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeInsectItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeInsectItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, insect12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, insect22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, insect32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, insect42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeInsectItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeInsectItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, insect13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, insect23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, insect33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, insect43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeInsectItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeInsectItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, insect14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, insect24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, insect34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, insect44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeInsectItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeInsectItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, insect15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, insect25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, insect35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, insect45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, insect55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, insect65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, insect75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, insect85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, insect95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  elseif req == 25 then -- [�Ĺ�]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugePlantItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugePlantItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, plant10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, plant20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, plant30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, plant40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugePlantItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugePlantItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, plant11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, plant21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, plant31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, plant41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugePlantItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugePlantItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, plant12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, plant22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, plant32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, plant42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugePlantItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugePlantItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, plant13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, plant23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, plant33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, plant43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugePlantItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugePlantItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, plant14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, plant24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, plant34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, plant44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugePlantItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugePlantItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, plant15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, plant25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, plant35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, plant45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, plant55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, plant65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, plant75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, plant85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, plant95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  elseif req == 26 then -- [�̽��͸�]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeMysteryItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeMysteryItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, mystery10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, mystery20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, mystery30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, mystery40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeMysteryItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeMysteryItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, mystery11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, mystery21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, mystery31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, mystery41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
      return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeMysteryItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeMysteryItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, mystery12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, mystery22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, mystery32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, mystery42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeMysteryItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeMysteryItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, mystery13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, mystery23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, mystery33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, mystery43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeMysteryItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeMysteryItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, mystery14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, mystery24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, mystery34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, mystery44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeMysteryItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeMysteryItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, mystery15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, mystery25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, mystery35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, mystery45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, mystery55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, mystery65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, mystery75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, mystery85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, mystery95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  elseif req == 27 then -- [��Ż]
    RandMonType = SetRandom(cnum, 1, 1000)
    RandMonCnt = SetRandom(cnum, 1, 3)
    RandBoxterCnt = SetRandom(cnum, 1, 5)
  
    if GetSwitchCount(cnum, 778) == 1 then --[1~50]
      if RandMonType <= 10 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter10, 0, RandBoxterCnt, 0, boxterItem10, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 11 and RandMonType <= 20 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion10, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 21 and RandMonType <= 30 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion20, 0, RandMonCnt, 0, elysionItem10, 1)
      elseif RandMonType >= 31 and RandMonType <= 31 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon10, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 32 and RandMonType <= 32 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon20, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 33 and RandMonType <= 33 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon30, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 34 and RandMonType <= 34 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon40, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 35 and RandMonType <= 35 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon50, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 36 and RandMonType <= 36 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon60, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 37 and RandMonType <= 37 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon70, 0, RandMonCnt, 0, HugeMetalItem10, 1)
      elseif RandMonType >= 38 and RandMonType <= 40 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon80, 0, RandMonCnt, 0, HugeMetalItem10, 1)

      elseif RandMonType >= 41 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, metal10, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, metal20, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, metal30, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, metal40, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal50, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal60, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal70, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal80, 0, RandMonCnt, 0, RaceItem10, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal90, 0, RandMonCnt, 0, RaceItem10, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 2 then --[51~75]
      if RandMonType <= 20 then -- �ڽ��� ��ȯ 2%
        AddMonster(cnum, 1212, boxter11, 0, RandBoxterCnt, 0, boxterItem11, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 21 and RandMonType <= 40 then  -- �����ÿ� 1 2%
        AddMonster(cnum, 1212, elysion11, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 41 and RandMonType <= 60 then  -- �����ÿ� 2 2%
        AddMonster(cnum, 1212, elysion21, 0, RandMonCnt, 0, elysionItem11, 1)
      elseif RandMonType >= 61 and RandMonType <= 63 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon11, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 64 and RandMonType <= 66 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon21, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 68 and RandMonType <= 70 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon31, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 71 and RandMonType <= 73 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon41, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 74 and RandMonType <= 75 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon51, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 76 and RandMonType <= 77 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon61, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 78 and RandMonType <= 79 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon71, 0, RandMonCnt, 0, HugeMetalItem11, 1)
      elseif RandMonType >= 79 and RandMonType <= 80 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon81, 0, RandMonCnt, 0, HugeMetalItem11, 1)

      elseif RandMonType >= 81 and RandMonType <= 130 then  -- ���� 1
        AddMonster(cnum, 1212, metal11, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 131 and RandMonType <= 200 then  -- ���� 2
        AddMonster(cnum, 1212, metal21, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 201 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, metal31, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, metal41, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal51, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal61, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal71, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal81, 0, RandMonCnt, 0, RaceItem11, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal91, 0, RandMonCnt, 0, RaceItem11, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   


    elseif GetSwitchCount(cnum, 778) == 3 then --[76~99]
      if RandMonType <= 30 then -- �ڽ��� ��ȯ 3%
        AddMonster(cnum, 1212, boxter12, 0, RandBoxterCnt, 0, boxterItem12, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 31 and RandMonType <= 60 then  -- �����ÿ� 1 3%
        AddMonster(cnum, 1212, elysion12, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 61 and RandMonType <= 90 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion22, 0, RandMonCnt, 0, elysionItem12, 1)
      elseif RandMonType >= 91 and RandMonType <= 94 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon12, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 95 and RandMonType <= 97 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon22, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 98 and RandMonType <= 100 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon32, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 101 and RandMonType <= 103 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon42, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 104 and RandMonType <= 107 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon52, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 108 and RandMonType <= 111 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon62, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 112 and RandMonType <= 115 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon72, 0, RandMonCnt, 0, HugeMetalItem12, 1)
      elseif RandMonType >= 116 and RandMonType <= 120 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon82, 0, RandMonCnt, 0, HugeMetalItem12, 1)

      elseif RandMonType >= 121 and RandMonType <= 170 then  -- ���� 1
        AddMonster(cnum, 1212, metal12, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 171 and RandMonType <= 240 then  -- ���� 2
        AddMonster(cnum, 1212, metal22, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 241 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, metal32, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, metal42, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal52, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal62, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal72, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal82, 0, RandMonCnt, 0, RaceItem12, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal92, 0, RandMonCnt, 0, RaceItem12, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 4 then --[100~125]
      if RandMonType <= 40 then -- �ڽ��� ��ȯ 4%
        AddMonster(cnum, 1212, boxter13, 0, RandBoxterCnt, 0, boxterItem13, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 41 and RandMonType <= 80 then  -- �����ÿ� 1 4%
        AddMonster(cnum, 1212, elysion13, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 81 and RandMonType <= 120 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion23, 0, RandMonCnt, 0, elysionItem13, 1)
      elseif RandMonType >= 121 and RandMonType <= 124 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon13, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 125 and RandMonType <= 129 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon23, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 130 and RandMonType <= 134 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon33, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 135 and RandMonType <= 138 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon43, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 139 and RandMonType <= 143 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon53, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 144 and RandMonType <= 149 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon63, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 150 and RandMonType <= 154 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon73, 0, RandMonCnt, 0, HugeMetalItem13, 1)
      elseif RandMonType >= 155 and RandMonType <= 160 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon83, 0, RandMonCnt, 0, HugeMetalItem13, 1)

      elseif RandMonType >= 161 and RandMonType <= 230 then  -- ���� 1
        AddMonster(cnum, 1212, metal13, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 231 and RandMonType <= 250 then  -- ���� 2
        AddMonster(cnum, 1212, metal23, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 3
        AddMonster(cnum, 1212, metal33, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 301 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, metal43, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal53, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal63, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal73, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal83, 0, RandMonCnt, 0, RaceItem13, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal93, 0, RandMonCnt, 0, RaceItem13, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 5 then --[126~200]
      if RandMonType <= 50 then -- �ڽ��� ��ȯ 5%
        AddMonster(cnum, 1212, boxter14, 0, RandBoxterCnt, 0, boxterItem14, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 51 and RandMonType <= 100 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion14, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 101 and RandMonType <= 150 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion24, 0, RandMonCnt, 0, elysionItem14, 1)
      elseif RandMonType >= 151 and RandMonType <= 157 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon14, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 158 and RandMonType <= 164 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon24, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 165 and RandMonType <= 172 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon34, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 173 and RandMonType <= 180 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon44, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 181 and RandMonType <= 186 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon54, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 187 and RandMonType <= 190 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon64, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 191 and RandMonType <= 195 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon74, 0, RandMonCnt, 0, HugeMetalItem14, 1)
      elseif RandMonType >= 196 and RandMonType <= 200 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon84, 0, RandMonCnt, 0, HugeMetalItem14, 1)

      elseif RandMonType >= 201 and RandMonType <= 250 then  -- ���� 1
        AddMonster(cnum, 1212, metal14, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 251 and RandMonType <= 300 then  -- ���� 2
        AddMonster(cnum, 1212, metal24, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 301 and RandMonType <= 350 then  -- ���� 3
        AddMonster(cnum, 1212, metal34, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 351 and RandMonType <= 400 then  -- ���� 4
        AddMonster(cnum, 1212, metal44, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 401 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal54, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal64, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal74, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal84, 0, RandMonCnt, 0, RaceItem14, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal94, 0, RandMonCnt, 0, RaceItem14, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   

    elseif GetSwitchCount(cnum, 778) == 6 then --[���� ����]
      if RandMonType <= 70 then -- �ڽ��� ��ȯ 1%
        AddMonster(cnum, 1212, boxter15, 0, RandBoxterCnt, 0, boxterItem15, 1)
        return 1,0,"�ڽ���["..RandBoxterCnt.."]������ ��ȯ�Ǿ���..@["..GetHeroName(cnum).."] ���� ����..."           
      elseif RandMonType >= 71 and RandMonType <= 140 then  -- �����ÿ� 1 1%
        AddMonster(cnum, 1212, elysion15, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 141 and RandMonType <= 210 then  -- �����ÿ� 2 1%
        AddMonster(cnum, 1212, elysion25, 0, RandMonCnt, 0, elysionItem15, 1)
      elseif RandMonType >= 211 and RandMonType <= 218 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon15, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 219 and RandMonType <= 226 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon25, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 227 and RandMonType <= 234 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon35, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 235 and RandMonType <= 242 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon45, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 243 and RandMonType <= 249 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon55, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 250 and RandMonType <= 256 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon65, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 257 and RandMonType <= 264 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon75, 0, RandMonCnt, 0, HugeMetalItem15, 1)
      elseif RandMonType >= 265 and RandMonType <= 280 then  -- �Ŵ� �⺻�� 1%
        AddMonster(cnum, 1212, HugeMon85, 0, RandMonCnt, 0, HugeMetalItem15, 1)

      elseif RandMonType >= 281 and RandMonType <= 330 then  -- ���� 1
        AddMonster(cnum, 1212, metal15, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 331 and RandMonType <= 400 then  -- ���� 2
        AddMonster(cnum, 1212, metal25, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 401 and RandMonType <= 470 then  -- ���� 3
        AddMonster(cnum, 1212, metal35, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 471 and RandMonType <= 520 then  -- ���� 4
        AddMonster(cnum, 1212, metal45, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 521 and RandMonType <= 600 then  -- ���� 5
        AddMonster(cnum, 1212, metal55, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 601 and RandMonType <= 700 then  -- ���� 6
        AddMonster(cnum, 1212, metal65, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 701 and RandMonType <= 800 then  -- ���� 7
        AddMonster(cnum, 1212, metal75, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 801 and RandMonType <= 900 then  -- ���� 8
        AddMonster(cnum, 1212, metal85, 0, RandMonCnt, 0, RaceItem15, 1)
      elseif RandMonType >= 901 and RandMonType <= 1000 then  -- ���� 9
        AddMonster(cnum, 1212, metal95, 0, RandMonCnt, 0, RaceItem15, 1)
      end
            return 1,0,"��Ӵ��..����["..RandMonCnt.."]������ ��ȯ�Ǿ���..ũũ"   
    end

  end
end
