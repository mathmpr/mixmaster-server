function NPC_QUEST_686(cnum, reqNumber)

-- �������ʹ� �뷱���� ����� �͵� ���� �������� ����, ���� �������� idx ���� ������ �������. �Ŀ� �뷱�� �� �ſ� �����ϴ�.
-- 110308 ������ ���� �䱸 ���� 10�� Ȯ��, ������ ��ġ ���� �䱸 ���� 150 Ȯ��, ��Ʋ ��ġ ���� ���� 155 Ȯ��


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
					
				return 2,0,"��~������� �ھ �˴ϴ�~@Ȱ~Ȱ~! ��Ÿ������ �һ���!@�˰����� ���� ���ø���!@���ڹ��� ����!@�͸� �������� �Ǹ��ϴ� '��ġ ��ȯ��' �����Ͽ� �������ø� ���� �༮���� �ٲ� �帳�ϴ�!!",1111,"�̷��� �־��׿�..!"
			else -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		else -- ��ġ ��ȯ���� ���� ��
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 5,0,"��ɼ�~!@��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"
			else -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"��! �����!@[������ ��ġ ����Ʈ]@[��Ʋ ��ġ ���� ����Ʈ]��@������ ������ ������ ��ġ�� �κ��丮�� �ְ� ���ʼ�!"


	elseif req == 112 then
		return 5,0,"��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"


	elseif req == 113 then
		return 5,0,"������� ��ġ�� Ű��� ��ô±���!!@� �༮�� ������ �÷� ���̳���?",10,"ġġ",11,"�޾�",16,"�̸�",17,"�ϳ�"





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"� ������ ��ġ�� ��Ʋ��ġ�� ������ ��Ű�� ��������?",18,"ġġ",19,"�޾�",20,"�̸�",21,"�ϳ�"


----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- ���� 130 �̻��� ġġ�� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 645) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10��",1056,"��~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"ġġ�� ���� 150���� Ű���Դ°���?",1026,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� ġġ�� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� ġġ�� ������ ������� ������ ���� �� �� ��������? ġġ�� ������� ���� ���� ��������?",1006,"����;��!"
        end
			end
    else -- ġġ�� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1006 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� ġġ�� ������ ��ŵ���??",1026,"��~!"
    else
      return 2,0,"��~ġġ�� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..ġġ ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1016,"��"
    end   

  elseif req == 1016 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
    return 2,0,"�׷� ġġ�� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1026 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 644, 2) -- ġġ 1�� ����Ʈ ����
          EndQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
          return 2,0,"����ѵ���? ġġ�� ��û�� ���� ���� �ִ� ����? ���� ġġ�� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1036,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1036 then -- ġġ 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1046,"��~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 200) -- ġġ 2�� ����Ʈ â
    return 1,0,"����� [������ ���], [���� �Ӹ���], [ū �Ӹ���]�� ��, ��, �� ������ �巡�� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1066,"[���� �� ������ ����ü]",1076,"[ȸ�� �� ������ ����ü]",1086,"[�Ķ� �� ������ ����ü]",1096,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- ġġ�� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� ġġ�� ������ ������ �ȵǴ� ����!? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų ġġ �� ������ ������ �����;� �ϴµ���? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- ���� 150 �̻��� ġġ�� �ִ��� �˻�
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- ���� 130 �̻��� �޾��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 650) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10��",1156,"��~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�޾��� ���� 150���� Ű���Դ°���?",1126,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �޾��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �޾��� ������ ������� ������ ���� �� �� ��������? �޾��� ������� ���� ���� ��������?",1106,"����;��!"
        end
			end
    else -- �޾��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1106 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �޾��� ������ ��ŵ���??",1126,"��~!"
    else
      return 2,0,"��~�޾��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�޾� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1116,"��"
    end   

  elseif req == 1116 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
    return 2,0,"�׷� �޾��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1126 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 649, 2) -- �޾� 1�� ����Ʈ ����
          EndQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �޾��� ��û�� ���� ���� �ִ� ����? ���� �޾��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1136,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1136 then -- �޾� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1146,"��~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 202) -- �޾� 2�� ����Ʈ â
    return 1,0,"����� [���� �θ�], [��� ����], [������ ����]�� ��, ��, �� ������ �� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1166,"[���� �� ������ ����ü]",1176,"[ȸ�� �� ������ ����ü]",1186,"[�Ķ� �� ������ ����ü]",1196,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �޾��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �޾��� ������ ������ �ȵǴ� ����!? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �޾� �� ������ ������ �����;� �ϴµ���? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- ���� 150 �̻��� �޾��� �ִ��� �˻�
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- ���� 130 �̻��� �̸��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 655) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ��] 30��, [���� ����] 20��, [������ ����] 10��",1256,"��~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�̸��� ���� 150���� Ű���Դ°���?",1226,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �̸��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �̸��� ������ ������� ������ ���� �� �� ��������? �̸��� ������� ���� ���� ��������?",1206,"����;��!"
        end
			end
    else -- �̸��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1206 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �̸��� ������ ��ŵ���??",1226,"��~!"
    else
      return 2,0,"��~�̸��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�̸� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1216,"��"
    end   

  elseif req == 1216 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
    return 2,0,"�׷� �̸��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1226 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 654, 2) -- �̸� 1�� ����Ʈ ����
          EndQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �̸��� ��û�� ���� ���� �ִ� ����? ���� �̸��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1236,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1236 then -- �̸� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1246,"��~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 204) -- �̸� 2�� ����Ʈ â
    return 1,0,"����� [������ ��], [���� ����], [������ ����]�� ��, ��, �� ������ ���� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1266,"[���� �� ������ ����ü]",1276,"[ȸ�� �� ������ ����ü]",1286,"[�Ķ� �� ������ ����ü]",1296,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �̸��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �̸��� ������ ������ �ȵǴ� ����!? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �̸� �� ������ ������ �����;� �ϴµ���? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- ���� 150 �̻��� �̸��� �ִ��� �˻�
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- ���� 130 �̻��� �ϳ��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 660) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [��ö ����] 30��, [���� ����] 20��, [���� ����] 10��",1356,"��~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�ϳ� ���� 150���� Ű���Դ°���?",1326,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �ϳ��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �ϳ��� ������ ������� ������ ���� �� �� ��������? �ϳ��� ������� ���� ���� ��������?",1306,"����;��!"
        end
			end
    else -- �ϳ��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1306 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �ϳ� ������ ��ŵ���??",1326,"��~!"
    else
      return 2,0,"��~�ϳ��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�ϳ� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1316,"��"
    end   

  elseif req == 1316 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
    return 2,0,"�׷� �ϳ� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1326 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 659, 2) -- �ϳ� 1�� ����Ʈ ����
          EndQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �ϳ��� ��û�� ���� ���� �ִ� ����? ���� �ϳ��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1336,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1336 then -- �ϳ� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1346,"��~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 206) -- �ϳ� 2�� ����Ʈ â
    return 1,0,"����� [��ö ����], [���� ����], [���� ����]�� ��, ��, �� ������ ��Ż ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1366,"[���� �� ������ ����ü]",1376,"[ȸ�� �� ������ ����ü]",1386,"[�Ķ� �� ������ ����ü]",1396,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �ϳ� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �ϳ� ������ ������ �ȵǴ� ����!? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �ϳ� �� ������ ������ �����;� �ϴµ���? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- ���� 150 �̻��� �ϳ��� �ִ��� �˻�
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"������� ��ġ ��ȯ���� �ֱ���!@����~ ������ ��ġ �߿�@� �༮�� ��ȯ���ΰ���?",6,"ġġ ��ġ ��ȯ��",7,"�޾� ��ġ ��ȯ��",8,"�̸� ��ġ ��ȯ��",9,"�ϳ� ��ġ ��ȯ��"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 5,0,"�һ���! ���� �༮������~@������ �˷��ֽñ���~",12,"�һ��� ��ȯ��(Lv.40)",13,"�һ��� ��ȯ��(Lv.60)",14,"�һ��� ��ȯ��(Lv.80)",15,"�һ��� ��ȯ��(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"���ø���! ���� �༮������~@������ �˷��ֽñ���~",22,"���ø��� ��ȯ��(Lv.40)",23,"���ø��� ��ȯ��(Lv.60)",24,"���ø��� ��ȯ��(Lv.80)",25,"���ø��� ��ȯ��(Lv.100)",26,"���ø��� ��ȯ��(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"����! ���� �༮������~@������ �˷��ֽñ���~",52,"���� ��ȯ��(Lv.40)",53,"���� ��ȯ��(Lv.60)",54,"���� ��ȯ��(Lv.80)",55,"���� ��ȯ��(Lv.100)",56,"���� ��ȯ��(Lv.120)"


		end

-------------------------------------------- ������ ��ġ ��ȯ�� �˻� �� ���� ����

	elseif req == 6 then  -- ġġ
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"ġġ! ���� �༮������~@������ �˷��ֽñ���~",62,"ġġ ��ȯ��(Lv.40)",63,"ġġ ��ȯ��(Lv.60)",64,"ġġ ��ȯ��(Lv.80)",65,"ġġ ��ȯ��(Lv.100)",66,"ġġ ��ȯ��(Lv.120)"


		end

	elseif req == 7 then -- �޾�
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�޾�! ���� �༮������~@������ �˷��ֽñ���~",72,"�޾� ��ȯ��(Lv.40)",73,"�޾� ��ȯ��(Lv.60)",74,"�޾� ��ȯ��(Lv.80)",75,"�޾� ��ȯ��(Lv.100)",76,"�޾� ��ȯ��(Lv.120)"


		end


	elseif req == 8 then  -- �̸�
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�̸�! ���� �༮������~@������ �˷��ֽñ���~",82,"�̸� ��ȯ��(Lv.40)",83,"�̸� ��ȯ��(Lv.60)",84,"�̸� ��ȯ��(Lv.80)",85,"�̸� ��ȯ��(Lv.100)",86,"�̸� ��ȯ��(Lv.120)"


		end

	elseif req == 9 then -- �ϳ�
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�ϳ�! ���� �༮������~@������ �˷��ֽñ���~",92,"�ϳ� ��ȯ��(Lv.40)",93,"�ϳ� ��ȯ��(Lv.60)",94,"�ϳ� ��ȯ��(Lv.80)",95,"�ϳ� ��ȯ��(Lv.100)",96,"�ϳ� ��ȯ��(Lv.120)"


		end



------------
-- ġġ
------------



	elseif req == 10 then -- ġġ ���ڷ� ��ȯ
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ ġġ�� �޾Ҵ��� �˷��ֽñ���~~",1001,"ġġ(Lv.40)",1002,"ġġ(Lv.60)",1003,"ġġ(Lv.80)",1004,"ġġ(Lv.100)",1005,"ġġ(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"��?! ġġ�� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"��?! ġġ�� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"��?! ġġ�� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"��?! ġġ�� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"��?! ġġ�� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end



	elseif req == 100 then -- ġġ ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- �޾�
------------


	elseif req == 11 then -- �޾� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"��?! �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �޾��� �޾Ҵ��� �˷��ֽñ���~~",1011,"�޾�(Lv.40)",1012,"�޾�(Lv.60)",1013,"�޾�(Lv.80)",1014,"�޾�(Lv.100)",1015,"�޾�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"��?! �޾��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"��?! �޾��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"��?! �޾��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"��?! �޾��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"��?! �޾��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end


	elseif req == 101 then -- �޾� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- �̸�
------------
	elseif req == 16 then -- �̸� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �̸��� �޾Ҵ��� �˷��ֽñ���~~",1021,"�̸�(Lv.40)",1022,"�̸�(Lv.60)",1023,"�̸�(Lv.80)",1024,"�̸�(Lv.100)",1025,"�̸�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"��?! �̸��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"��?! �̸��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"��?! �̸��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"��?! �̸��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"��?! �̸��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end



	elseif req == 102 then -- �̸� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- �ϳ�
------------
	elseif req == 17 then -- �ϳ� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"��?! �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �ϳ��� �޾Ҵ��� �˷��ֽñ���~~",1031,"�ϳ�(Lv.40)",1032,"�ϳ�(Lv.60)",1033,"�ϳ�(Lv.80)",1034,"�ϳ�(Lv.100)",1035,"�ϳ�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �ϳ��� ������ ���� �ȵǴ� ����..�ϳ��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"��?! �ϳ��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"��?! �ϳ��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"��?! �ϳ��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"��?! �ϳ��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"��?! �ϳ��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end




	elseif req == 103 then -- �ϳ� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--�һ���
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",32,"�׳�~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",33,"�׳�~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",34,"�׳�~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",35,"�׳�~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--���ø���
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",42,"�׳�~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",43,"�׳�~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",44,"�׳�~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",45,"�׳�~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",46,"�׳�~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--����
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",521,"�׳�~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",531,"�׳�~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",541,"�׳�~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",551,"�׳�~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",561,"�׳�~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- ġġ
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",621,"�׳�~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",631,"�׳�~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",641,"�׳�~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",651,"�׳�~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",661,"�׳�~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �޾�
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",721,"�׳�~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",731,"�׳�~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",741,"�׳�~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",751,"�׳�~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",761,"�׳�~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �̸�
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",821,"�׳�~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",831,"�׳�~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",841,"�׳�~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",851,"�׳�~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",861,"�׳�~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �ϳ�
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",921,"�׳�~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",931,"�׳�~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",941,"�׳�~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",951,"�׳�~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",961,"�׳�~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end


	else
		return 0


	end




end


function NPC_QUEST_687(cnum, reqNumber)

-- �������ʹ� �뷱���� ����� �͵� ���� �������� ����, ���� �������� idx ���� ������ �������. �Ŀ� �뷱�� �� �ſ� �����ϴ�.
-- 110308 ������ ���� �䱸 ���� 10�� Ȯ��, ������ ��ġ ���� �䱸 ���� 150 Ȯ��, ��Ʋ ��ġ ���� ���� 155 Ȯ��


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
					
				return 2,0,"��~������� �ھ �˴ϴ�~@Ȱ~Ȱ~! ��Ÿ������ �һ���!@�˰����� ���� ���ø���!@���ڹ��� ����!@�͸� �������� �Ǹ��ϴ� '��ġ ��ȯ��' �����Ͽ� �������ø� ���� �༮���� �ٲ� �帳�ϴ�!!",1111,"�̷��� �־��׿�..!"
			else -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		else -- ��ġ ��ȯ���� ���� ��
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 5,0,"��ɼ�~!@��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"
			else -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"��! �����!@[������ ��ġ ����Ʈ]@[��Ʋ ��ġ ���� ����Ʈ]��@������ ������ ������ ��ġ�� �κ��丮�� �ְ� ���ʼ�!"


	elseif req == 112 then
		return 5,0,"��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"


	elseif req == 113 then
		return 5,0,"������� ��ġ�� Ű��� ��ô±���!!@� �༮�� ������ �÷� ���̳���?",10,"ġġ",11,"�޾�",16,"�̸�",17,"�ϳ�"





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"� ������ ��ġ�� ��Ʋ��ġ�� ������ ��Ű�� ��������?",18,"ġġ",19,"�޾�",20,"�̸�",21,"�ϳ�"


----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- ���� 130 �̻��� ġġ�� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 645) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10��",1056,"��~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"ġġ�� ���� 150���� Ű���Դ°���?",1026,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� ġġ�� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� ġġ�� ������ ������� ������ ���� �� �� ��������? ġġ�� ������� ���� ���� ��������?",1006,"����;��!"
        end
			end
    else -- ġġ�� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1006 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� ġġ�� ������ ��ŵ���??",1026,"��~!"
    else
      return 2,0,"��~ġġ�� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..ġġ ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1016,"��"
    end   

  elseif req == 1016 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
    return 2,0,"�׷� ġġ�� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1026 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 644, 2) -- ġġ 1�� ����Ʈ ����
          EndQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
          return 2,0,"����ѵ���? ġġ�� ��û�� ���� ���� �ִ� ����? ���� ġġ�� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1036,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1036 then -- ġġ 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1046,"��~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 200) -- ġġ 2�� ����Ʈ â
    return 1,0,"����� [������ ���], [���� �Ӹ���], [ū �Ӹ���]�� ��, ��, �� ������ �巡�� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1066,"[���� �� ������ ����ü]",1076,"[ȸ�� �� ������ ����ü]",1086,"[�Ķ� �� ������ ����ü]",1096,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- ġġ�� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� ġġ�� ������ ������ �ȵǴ� ����!? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų ġġ �� ������ ������ �����;� �ϴµ���? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- ���� 150 �̻��� ġġ�� �ִ��� �˻�
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- ���� 130 �̻��� �޾��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 650) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10��",1156,"��~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�޾��� ���� 150���� Ű���Դ°���?",1126,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �޾��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �޾��� ������ ������� ������ ���� �� �� ��������? �޾��� ������� ���� ���� ��������?",1106,"����;��!"
        end
			end
    else -- �޾��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1106 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �޾��� ������ ��ŵ���??",1126,"��~!"
    else
      return 2,0,"��~�޾��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�޾� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1116,"��"
    end   

  elseif req == 1116 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
    return 2,0,"�׷� �޾��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1126 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 649, 2) -- �޾� 1�� ����Ʈ ����
          EndQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �޾��� ��û�� ���� ���� �ִ� ����? ���� �޾��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1136,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1136 then -- �޾� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1146,"��~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 202) -- �޾� 2�� ����Ʈ â
    return 1,0,"����� [���� �θ�], [��� ����], [������ ����]�� ��, ��, �� ������ �� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1166,"[���� �� ������ ����ü]",1176,"[ȸ�� �� ������ ����ü]",1186,"[�Ķ� �� ������ ����ü]",1196,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �޾��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �޾��� ������ ������ �ȵǴ� ����!? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �޾� �� ������ ������ �����;� �ϴµ���? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- ���� 150 �̻��� �޾��� �ִ��� �˻�
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- ���� 130 �̻��� �̸��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 655) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ��] 30��, [���� ����] 20��, [������ ����] 10��",1256,"��~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�̸��� ���� 150���� Ű���Դ°���?",1226,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �̸��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �̸��� ������ ������� ������ ���� �� �� ��������? �̸��� ������� ���� ���� ��������?",1206,"����;��!"
        end
			end
    else -- �̸��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1206 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �̸��� ������ ��ŵ���??",1226,"��~!"
    else
      return 2,0,"��~�̸��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�̸� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1216,"��"
    end   

  elseif req == 1216 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
    return 2,0,"�׷� �̸��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1226 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 654, 2) -- �̸� 1�� ����Ʈ ����
          EndQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �̸��� ��û�� ���� ���� �ִ� ����? ���� �̸��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1236,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1236 then -- �̸� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1246,"��~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 204) -- �̸� 2�� ����Ʈ â
    return 1,0,"����� [������ ��], [���� ����], [������ ����]�� ��, ��, �� ������ ���� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1266,"[���� �� ������ ����ü]",1276,"[ȸ�� �� ������ ����ü]",1286,"[�Ķ� �� ������ ����ü]",1296,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �̸��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �̸��� ������ ������ �ȵǴ� ����!? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �̸� �� ������ ������ �����;� �ϴµ���? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- ���� 150 �̻��� �̸��� �ִ��� �˻�
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- ���� 130 �̻��� �ϳ��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 660) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [��ö ����] 30��, [���� ����] 20��, [���� ����] 10��",1356,"��~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�ϳ� ���� 150���� Ű���Դ°���?",1326,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �ϳ��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �ϳ��� ������ ������� ������ ���� �� �� ��������? �ϳ��� ������� ���� ���� ��������?",1306,"����;��!"
        end
			end
    else -- �ϳ��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1306 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �ϳ� ������ ��ŵ���??",1326,"��~!"
    else
      return 2,0,"��~�ϳ��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�ϳ� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1316,"��"
    end   

  elseif req == 1316 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
    return 2,0,"�׷� �ϳ� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1326 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 659, 2) -- �ϳ� 1�� ����Ʈ ����
          EndQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �ϳ��� ��û�� ���� ���� �ִ� ����? ���� �ϳ��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1336,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1336 then -- �ϳ� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1346,"��~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 206) -- �ϳ� 2�� ����Ʈ â
    return 1,0,"����� [��ö ����], [���� ����], [���� ����]�� ��, ��, �� ������ ��Ż ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1366,"[���� �� ������ ����ü]",1376,"[ȸ�� �� ������ ����ü]",1386,"[�Ķ� �� ������ ����ü]",1396,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �ϳ� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �ϳ� ������ ������ �ȵǴ� ����!? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �ϳ� �� ������ ������ �����;� �ϴµ���? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- ���� 150 �̻��� �ϳ��� �ִ��� �˻�
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"������� ��ġ ��ȯ���� �ֱ���!@����~ ������ ��ġ �߿�@� �༮�� ��ȯ���ΰ���?",6,"ġġ ��ġ ��ȯ��",7,"�޾� ��ġ ��ȯ��",8,"�̸� ��ġ ��ȯ��",9,"�ϳ� ��ġ ��ȯ��"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 5,0,"�һ���! ���� �༮������~@������ �˷��ֽñ���~",12,"�һ��� ��ȯ��(Lv.40)",13,"�һ��� ��ȯ��(Lv.60)",14,"�һ��� ��ȯ��(Lv.80)",15,"�һ��� ��ȯ��(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"���ø���! ���� �༮������~@������ �˷��ֽñ���~",22,"���ø��� ��ȯ��(Lv.40)",23,"���ø��� ��ȯ��(Lv.60)",24,"���ø��� ��ȯ��(Lv.80)",25,"���ø��� ��ȯ��(Lv.100)",26,"���ø��� ��ȯ��(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"����! ���� �༮������~@������ �˷��ֽñ���~",52,"���� ��ȯ��(Lv.40)",53,"���� ��ȯ��(Lv.60)",54,"���� ��ȯ��(Lv.80)",55,"���� ��ȯ��(Lv.100)",56,"���� ��ȯ��(Lv.120)"


		end

-------------------------------------------- ������ ��ġ ��ȯ�� �˻� �� ���� ����

	elseif req == 6 then  -- ġġ
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"ġġ! ���� �༮������~@������ �˷��ֽñ���~",62,"ġġ ��ȯ��(Lv.40)",63,"ġġ ��ȯ��(Lv.60)",64,"ġġ ��ȯ��(Lv.80)",65,"ġġ ��ȯ��(Lv.100)",66,"ġġ ��ȯ��(Lv.120)"


		end

	elseif req == 7 then -- �޾�
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�޾�! ���� �༮������~@������ �˷��ֽñ���~",72,"�޾� ��ȯ��(Lv.40)",73,"�޾� ��ȯ��(Lv.60)",74,"�޾� ��ȯ��(Lv.80)",75,"�޾� ��ȯ��(Lv.100)",76,"�޾� ��ȯ��(Lv.120)"


		end


	elseif req == 8 then  -- �̸�
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�̸�! ���� �༮������~@������ �˷��ֽñ���~",82,"�̸� ��ȯ��(Lv.40)",83,"�̸� ��ȯ��(Lv.60)",84,"�̸� ��ȯ��(Lv.80)",85,"�̸� ��ȯ��(Lv.100)",86,"�̸� ��ȯ��(Lv.120)"


		end

	elseif req == 9 then -- �ϳ�
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�ϳ�! ���� �༮������~@������ �˷��ֽñ���~",92,"�ϳ� ��ȯ��(Lv.40)",93,"�ϳ� ��ȯ��(Lv.60)",94,"�ϳ� ��ȯ��(Lv.80)",95,"�ϳ� ��ȯ��(Lv.100)",96,"�ϳ� ��ȯ��(Lv.120)"


		end



------------
-- ġġ
------------



	elseif req == 10 then -- ġġ ���ڷ� ��ȯ
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ ġġ�� �޾Ҵ��� �˷��ֽñ���~~",1001,"ġġ(Lv.40)",1002,"ġġ(Lv.60)",1003,"ġġ(Lv.80)",1004,"ġġ(Lv.100)",1005,"ġġ(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"��?! ġġ�� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"��?! ġġ�� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"��?! ġġ�� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"��?! ġġ�� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"��?! ġġ�� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end



	elseif req == 100 then -- ġġ ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- �޾�
------------


	elseif req == 11 then -- �޾� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"��?! �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �޾��� �޾Ҵ��� �˷��ֽñ���~~",1011,"�޾�(Lv.40)",1012,"�޾�(Lv.60)",1013,"�޾�(Lv.80)",1014,"�޾�(Lv.100)",1015,"�޾�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"��?! �޾��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"��?! �޾��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"��?! �޾��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"��?! �޾��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"��?! �޾��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end


	elseif req == 101 then -- �޾� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- �̸�
------------
	elseif req == 16 then -- �̸� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �̸��� �޾Ҵ��� �˷��ֽñ���~~",1021,"�̸�(Lv.40)",1022,"�̸�(Lv.60)",1023,"�̸�(Lv.80)",1024,"�̸�(Lv.100)",1025,"�̸�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"��?! �̸��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"��?! �̸��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"��?! �̸��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"��?! �̸��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"��?! �̸��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end



	elseif req == 102 then -- �̸� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- �ϳ�
------------
	elseif req == 17 then -- �ϳ� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"��?! �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �ϳ��� �޾Ҵ��� �˷��ֽñ���~~",1031,"�ϳ�(Lv.40)",1032,"�ϳ�(Lv.60)",1033,"�ϳ�(Lv.80)",1034,"�ϳ�(Lv.100)",1035,"�ϳ�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �ϳ��� ������ ���� �ȵǴ� ����..�ϳ��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"��?! �ϳ��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"��?! �ϳ��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"��?! �ϳ��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"��?! �ϳ��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"��?! �ϳ��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end




	elseif req == 103 then -- �ϳ� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--�һ���
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",32,"�׳�~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",33,"�׳�~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",34,"�׳�~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",35,"�׳�~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--���ø���
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",42,"�׳�~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",43,"�׳�~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",44,"�׳�~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",45,"�׳�~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",46,"�׳�~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--����
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",521,"�׳�~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",531,"�׳�~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",541,"�׳�~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",551,"�׳�~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",561,"�׳�~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- ġġ
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",621,"�׳�~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",631,"�׳�~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",641,"�׳�~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",651,"�׳�~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",661,"�׳�~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �޾�
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",721,"�׳�~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",731,"�׳�~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",741,"�׳�~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",751,"�׳�~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",761,"�׳�~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �̸�
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",821,"�׳�~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",831,"�׳�~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",841,"�׳�~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",851,"�׳�~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",861,"�׳�~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �ϳ�
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",921,"�׳�~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",931,"�׳�~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",941,"�׳�~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",951,"�׳�~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",961,"�׳�~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end


	else
		return 0


	end




end

function NPC_QUEST_688(cnum, reqNumber)

-- �������ʹ� �뷱���� ����� �͵� ���� �������� ����, ���� �������� idx ���� ������ �������. �Ŀ� �뷱�� �� �ſ� �����ϴ�.
-- 110308 ������ ���� �䱸 ���� 10�� Ȯ��, ������ ��ġ ���� �䱸 ���� 150 Ȯ��, ��Ʋ ��ġ ���� ���� 155 Ȯ��


req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 and GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 and GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 and GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 and GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 and GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 and GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
					
				return 2,0,"��~������� �ھ �˴ϴ�~@Ȱ~Ȱ~! ��Ÿ������ �һ���!@�˰����� ���� ���ø���!@���ڹ��� ����!@�͸� �������� �Ǹ��ϴ� '��ġ ��ȯ��' �����Ͽ� �������ø� ���� �༮���� �ٲ� �帳�ϴ�!!",1111,"�̷��� �־��׿�..!"
			else -- ��ġ ��ȯ���� ����, �κ��丮�� ��ġ�� ���� ��
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		else -- ��ġ ��ȯ���� ���� ��
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 5,0,"��ɼ�~!@��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"
			else -- ��ġ��ȯ���� �ְ�, �κ��丮�� ��ġ�� ���� ��(��ġ ��Ʋ ���´� üũ���� ����)
				return 4,0,"��ɼ�~!@���� �� �� �ΰ���?",112,"��ġ ��ȯ���� �־��",113,"������ ��ġ ����Ʈ",114,"��Ʋ ��ġ ���� ����Ʈ"
			end

		end
		
  elseif req == 1111 then
		return 1,0,"��! �����!@[������ ��ġ ����Ʈ]@[��Ʋ ��ġ ���� ����Ʈ]��@������ ������ ������ ��ġ�� �κ��丮�� �ְ� ���ʼ�!"


	elseif req == 112 then
		return 5,0,"��ġ ��ȯ���� �ֱ���!@����~ � �༮�� ��ȯ���ΰ���?",2,"�һ��� ��ġ ��ȯ��",3,"���ø��� ��ġ ��ȯ��",4,"���� ��ġ ��ȯ��",5,"������ ��ġ ��ȯ��"


	elseif req == 113 then
		return 5,0,"������� ��ġ�� Ű��� ��ô±���!!@� �༮�� ������ �÷� ���̳���?",10,"ġġ",11,"�޾�",16,"�̸�",17,"�ϳ�"





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------
	elseif req == 114 then
    return 5,0,"� ������ ��ġ�� ��Ʋ��ġ�� ������ ��Ű�� ��������?",18,"ġġ",19,"�޾�",20,"�̸�",21,"�ϳ�"


----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 18 then -- ���� 130 �̻��� ġġ�� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 645) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10��",1056,"��~!"
		end

    if GetSwitchCount(cnum, 643) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"ġġ�� ���� 150���� Ű���Դ°���?",1026,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��
        if GetHench(cnum, 1, 713, 130) < 1 and GetHench(cnum, 1, 714, 130) < 1 and GetHench(cnum, 1, 715, 130) < 1 and GetHench(cnum, 1, 716, 130) < 1 and GetHench(cnum, 1, 717, 130) < 1 and GetHench(cnum, 1, 733, 130) < 1 and GetHench(cnum, 1, 734, 130) < 1 and GetHench(cnum, 1, 735, 130) < 1 and GetHench(cnum, 1, 736, 130) < 1 and GetHench(cnum, 1, 737, 130) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� ġġ�� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� ġġ�� ������ ������� ������ ���� �� �� ��������? ġġ�� ������� ���� ���� ��������?",1006,"����;��!"
        end
			end
    else -- ġġ�� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1006 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 and GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� ġġ�� ������ ��ŵ���??",1026,"��~!"
    else
      return 2,0,"��~ġġ�� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..ġġ ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1016,"��"
    end   

  elseif req == 1016 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 643, 2)
    StartQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
    return 2,0,"�׷� ġġ�� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1026 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 and GetHench(cnum, 0, 733, 0) < 1 and GetHench(cnum, 0, 734, 0) < 1 and GetHench(cnum, 0, 735, 0) < 1 and GetHench(cnum, 0, 736, 0) < 1 and GetHench(cnum, 0, 737, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 and GetHench(cnum, 1, 733, 0) < 1 and GetHench(cnum, 1, 734, 0) < 1 and GetHench(cnum, 1, 735, 0) < 1 and GetHench(cnum, 1, 736, 0) < 1 and GetHench(cnum, 1, 737, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- ġġ�� ���� ��

        if GetHench(cnum, 1, 713, 150) < 1 and GetHench(cnum, 1, 714, 150) < 1 and GetHench(cnum, 1, 715, 150) < 1 and GetHench(cnum, 1, 716, 150) < 1 and GetHench(cnum, 1, 717, 150) < 1 and GetHench(cnum, 1, 733, 150) < 1 and GetHench(cnum, 1, 734, 150) < 1 and GetHench(cnum, 1, 735, 150) < 1 and GetHench(cnum, 1, 736, 150) < 1 and GetHench(cnum, 1, 737, 150) < 1 then -- �κ� üũ
          return 1,0,"ġġ�� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 644, 2) -- ġġ 1�� ����Ʈ ����
          EndQuest(cnum, 199) -- ġġ 1�� ����Ʈ â
          return 2,0,"����ѵ���? ġġ�� ��û�� ���� ���� �ִ� ����? ���� ġġ�� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1036,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1036 then -- ġġ 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1046,"��~!"

  elseif req == 1046 then
    SetSwitchCount(cnum, 645, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 200) -- ġġ 2�� ����Ʈ â
    return 1,0,"����� [������ ���], [���� �Ӹ���], [ū �Ӹ���]�� ��, ��, �� ������ �巡�� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1056 then

    if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
      return 1,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1066,"[���� �� ������ ����ü]",1076,"[ȸ�� �� ������ ����ü]",1086,"[�Ķ� �� ������ ����ü]",1096,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1066 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1076 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1086 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1096 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 647, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ ġġ�� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1100,"ġġ�� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- ġġ�� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1100 then
    if GetSwitchCount(cnum, 647) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 647) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 713, 0) > 0 or GetHench(cnum, 0, 714, 0) > 0 or GetHench(cnum, 0, 715, 0) > 0 or GetHench(cnum, 0, 716, 0) > 0 or GetHench(cnum, 0, 717, 0) > 0 or GetHench(cnum, 0, 733, 0) > 0 or GetHench(cnum, 0, 734, 0) > 0 or GetHench(cnum, 0, 735, 0) > 0 or GetHench(cnum, 0, 736, 0) > 0 or GetHench(cnum, 0, 737, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� ġġ�� ������ ������ �ȵǴ� ����!? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 713, 0) > 1 or GetHench(cnum, 1, 714, 0) > 1 or GetHench(cnum, 1, 715, 0) > 1 or GetHench(cnum, 1, 716, 0) > 1 or GetHench(cnum, 1, 717, 0) > 1 or GetHench(cnum, 1, 733, 0) > 1 or GetHench(cnum, 1, 734, 0) > 1 or GetHench(cnum, 1, 735, 0) > 1 or GetHench(cnum, 1, 736, 0) > 1 or GetHench(cnum, 1, 737, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų ġġ �� ������ ������ �����;� �ϴµ���? ������ ������ ġġ �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 713, 150) > 0 or GetHench(cnum, 1, 714, 150) > 0 or GetHench(cnum, 1, 715, 150) > 0 or GetHench(cnum, 1, 716, 150) > 0 or GetHench(cnum, 1, 717, 150) > 0 or GetHench(cnum, 1, 733, 150) > 0 or GetHench(cnum, 1, 734, 150) > 0 or GetHench(cnum, 1, 735, 150) > 0 or GetHench(cnum, 1, 736, 150) > 0 or GetHench(cnum, 1, 737, 150) > 0 then -- ���� 150 �̻��� ġġ�� �ִ��� �˻�
      if GetItemCount(cnum, 480, 0 ) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 713, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 713, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 714, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 714, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 715, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 715, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 716, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 716, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 717, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 717, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 733, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 733, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 734, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 734, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 735, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 735, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 736, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 736, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 737, 150) > 0 then
        if GetSwitchCount(cnum, 647) == 1 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 2 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 3 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 647) == 4 then
          AddHench(cnum, 737, -1)
          AddHenchAndState(cnum, 876, 0)
          SetSwitchCount(cnum, 643, 1)
          SetSwitchCount(cnum, 644, 1)
          SetSwitchCount(cnum, 645, 1)
          SetSwitchCount(cnum, 646, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 480, -30)
          AddItemCount(cnum, 481, -20)
          AddItemCount(cnum, 482, -10)
          EndQuest(cnum, 200)
          return 2,0,"ġġ�� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 19 then -- ���� 130 �̻��� �޾��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 650) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10��",1156,"��~!"
		end

    if GetSwitchCount(cnum, 648) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�޾��� ���� 150���� Ű���Դ°���?",1126,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��
        if GetHench(cnum, 1, 718, 130) < 1 and GetHench(cnum, 1, 719, 130) < 1 and GetHench(cnum, 1, 720, 130) < 1 and GetHench(cnum, 1, 721, 130) < 1 and GetHench(cnum, 1, 722, 130) < 1 and GetHench(cnum, 1, 738, 130) < 1 and GetHench(cnum, 1, 739, 130) < 1 and GetHench(cnum, 1, 740, 130) < 1 and GetHench(cnum, 1, 741, 130) < 1 and GetHench(cnum, 1, 742, 130) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �޾��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �޾��� ������ ������� ������ ���� �� �� ��������? �޾��� ������� ���� ���� ��������?",1106,"����;��!"
        end
			end
    else -- �޾��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1106 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 and GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �޾��� ������ ��ŵ���??",1126,"��~!"
    else
      return 2,0,"��~�޾��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�޾� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1116,"��"
    end   

  elseif req == 1116 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 648, 2)
    StartQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
    return 2,0,"�׷� �޾��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1126 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 and GetHench(cnum, 0, 738, 0) < 1 and GetHench(cnum, 0, 739, 0) < 1 and GetHench(cnum, 0, 740, 0) < 1 and GetHench(cnum, 0, 741, 0) < 1 and GetHench(cnum, 0, 742, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 and GetHench(cnum, 1, 738, 0) < 1 and GetHench(cnum, 1, 739, 0) < 1 and GetHench(cnum, 1, 740, 0) < 1 and GetHench(cnum, 1, 741, 0) < 1 and GetHench(cnum, 1, 742, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �޾޴� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �޾��� ���� ��

        if GetHench(cnum, 1, 718, 150) < 1 and GetHench(cnum, 1, 719, 150) < 1 and GetHench(cnum, 1, 720, 150) < 1 and GetHench(cnum, 1, 721, 150) < 1 and GetHench(cnum, 1, 722, 150) < 1 and GetHench(cnum, 1, 738, 150) < 1 and GetHench(cnum, 1, 739, 150) < 1 and GetHench(cnum, 1, 740, 150) < 1 and GetHench(cnum, 1, 741, 150) < 1 and GetHench(cnum, 1, 742, 150) < 1 then -- �κ� üũ
          return 1,0,"�޾��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 649, 2) -- �޾� 1�� ����Ʈ ����
          EndQuest(cnum, 201) -- �޾� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �޾��� ��û�� ���� ���� �ִ� ����? ���� �޾��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1136,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1136 then -- �޾� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1146,"��~!"

  elseif req == 1146 then
    SetSwitchCount(cnum, 650, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 202) -- �޾� 2�� ����Ʈ â
    return 1,0,"����� [���� �θ�], [��� ����], [������ ����]�� ��, ��, �� ������ �� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1156 then

    if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
      return 1,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1166,"[���� �� ������ ����ü]",1176,"[ȸ�� �� ������ ����ü]",1186,"[�Ķ� �� ������ ����ü]",1196,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1166 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1176 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1186 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1196 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 652, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �޾��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1200,"�޾��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �޾��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1200 then
    if GetSwitchCount(cnum, 652) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 652) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 718, 0) > 0 or GetHench(cnum, 0, 719, 0) > 0 or GetHench(cnum, 0, 720, 0) > 0 or GetHench(cnum, 0, 721, 0) > 0 or GetHench(cnum, 0, 722, 0) > 0 or GetHench(cnum, 0, 738, 0) > 0 or GetHench(cnum, 0, 739, 0) > 0 or GetHench(cnum, 0, 740, 0) > 0 or GetHench(cnum, 0, 741, 0) > 0 or GetHench(cnum, 0, 742, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �޾��� ������ ������ �ȵǴ� ����!? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 718, 0) > 1 or GetHench(cnum, 1, 719, 0) > 1 or GetHench(cnum, 1, 720, 0) > 1 or GetHench(cnum, 1, 721, 0) > 1 or GetHench(cnum, 1, 722, 0) > 1 or GetHench(cnum, 1, 738, 0) > 1 or GetHench(cnum, 1, 739, 0) > 1 or GetHench(cnum, 1, 740, 0) > 1 or GetHench(cnum, 1, 741, 0) > 1 or GetHench(cnum, 1, 742, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �޾� �� ������ ������ �����;� �ϴµ���? ������ ������ �޾� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 718, 150) > 0 or GetHench(cnum, 1, 719, 150) > 0 or GetHench(cnum, 1, 720, 150) > 0 or GetHench(cnum, 1, 721, 150) > 0 or GetHench(cnum, 1, 722, 150) > 0 or GetHench(cnum, 1, 738, 150) > 0 or GetHench(cnum, 1, 739, 150) > 0 or GetHench(cnum, 1, 740, 150) > 0 or GetHench(cnum, 1, 741, 150) > 0 or GetHench(cnum, 1, 742, 150) > 0 then -- ���� 150 �̻��� �޾��� �ִ��� �˻�
      if GetItemCount(cnum, 489, 0 ) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 718, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 718, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 719, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 719, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 720, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 720, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 721, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 721, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 722, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 722, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 738, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 738, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 739, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 739, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 740, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 740, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 741, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 741, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 742, 150) > 0 then
        if GetSwitchCount(cnum, 652) == 1 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 2 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 3 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 652) == 4 then
          AddHench(cnum, 742, -1)
          AddHenchAndState(cnum, 877, 0)
          SetSwitchCount(cnum, 648, 1)
          SetSwitchCount(cnum, 649, 1)
          SetSwitchCount(cnum, 650, 1)
          SetSwitchCount(cnum, 651, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 489, -30)
          AddItemCount(cnum, 490, -20)
          AddItemCount(cnum, 491, -10)
          EndQuest(cnum, 202)
          return 2,0,"�޾��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 20 then -- ���� 130 �̻��� �̸��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 655) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [������ ��] 30��, [���� ����] 20��, [������ ����] 10��",1256,"��~!"
		end

    if GetSwitchCount(cnum, 653) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�̸��� ���� 150���� Ű���Դ°���?",1226,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��
        if GetHench(cnum, 1, 723, 130) < 1 and GetHench(cnum, 1, 724, 130) < 1 and GetHench(cnum, 1, 725, 130) < 1 and GetHench(cnum, 1, 726, 130) < 1 and GetHench(cnum, 1, 727, 130) < 1 and GetHench(cnum, 1, 743, 130) < 1 and GetHench(cnum, 1, 744, 130) < 1 and GetHench(cnum, 1, 745, 130) < 1 and GetHench(cnum, 1, 746, 130) < 1 and GetHench(cnum, 1, 747, 130) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �̸��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �̸��� ������ ������� ������ ���� �� �� ��������? �̸��� ������� ���� ���� ��������?",1206,"����;��!"
        end
			end
    else -- �̸��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1206 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 and GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �̸��� ������ ��ŵ���??",1226,"��~!"
    else
      return 2,0,"��~�̸��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�̸� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1216,"��"
    end   

  elseif req == 1216 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 653, 2)
    StartQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
    return 2,0,"�׷� �̸��� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1226 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 and GetHench(cnum, 0, 743, 0) < 1 and GetHench(cnum, 0, 744, 0) < 1 and GetHench(cnum, 0, 745, 0) < 1 and GetHench(cnum, 0, 746, 0) < 1 and GetHench(cnum, 0, 747, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 and GetHench(cnum, 1, 743, 0) < 1 and GetHench(cnum, 1, 744, 0) < 1 and GetHench(cnum, 1, 745, 0) < 1 and GetHench(cnum, 1, 746, 0) < 1 and GetHench(cnum, 1, 747, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �̸��� ���� ��

        if GetHench(cnum, 1, 723, 150) < 1 and GetHench(cnum, 1, 724, 150) < 1 and GetHench(cnum, 1, 725, 150) < 1 and GetHench(cnum, 1, 726, 150) < 1 and GetHench(cnum, 1, 727, 150) < 1 and GetHench(cnum, 1, 743, 150) < 1 and GetHench(cnum, 1, 744, 150) < 1 and GetHench(cnum, 1, 745, 150) < 1 and GetHench(cnum, 1, 746, 150) < 1 and GetHench(cnum, 1, 747, 150) < 1 then -- �κ� üũ
          return 1,0,"�̸��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 654, 2) -- �̸� 1�� ����Ʈ ����
          EndQuest(cnum, 203) -- �̸� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �̸��� ��û�� ���� ���� �ִ� ����? ���� �̸��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1236,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1236 then -- �̸� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1246,"��~!"

  elseif req == 1246 then
    SetSwitchCount(cnum, 655, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 204) -- �̸� 2�� ����Ʈ â
    return 1,0,"����� [������ ��], [���� ����], [������ ����]�� ��, ��, �� ������ ���� ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1256 then

    if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
      return 1,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1266,"[���� �� ������ ����ü]",1276,"[ȸ�� �� ������ ����ü]",1286,"[�Ķ� �� ������ ����ü]",1296,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1266 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1276 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1286 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1296 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 657, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �̸��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1300,"�̸��� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �̸��� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1300 then
    if GetSwitchCount(cnum, 657) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 657) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 723, 0) > 0 or GetHench(cnum, 0, 724, 0) > 0 or GetHench(cnum, 0, 725, 0) > 0 or GetHench(cnum, 0, 726, 0) > 0 or GetHench(cnum, 0, 727, 0) > 0 or GetHench(cnum, 0, 743, 0) > 0 or GetHench(cnum, 0, 744, 0) > 0 or GetHench(cnum, 0, 745, 0) > 0 or GetHench(cnum, 0, 746, 0) > 0 or GetHench(cnum, 0, 747, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �̸��� ������ ������ �ȵǴ� ����!? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 723, 0) > 1 or GetHench(cnum, 1, 724, 0) > 1 or GetHench(cnum, 1, 725, 0) > 1 or GetHench(cnum, 1, 726, 0) > 1 or GetHench(cnum, 1, 727, 0) > 1 or GetHench(cnum, 1, 743, 0) > 1 or GetHench(cnum, 1, 744, 0) > 1 or GetHench(cnum, 1, 745, 0) > 1 or GetHench(cnum, 1, 746, 0) > 1 or GetHench(cnum, 1, 747, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �̸� �� ������ ������ �����;� �ϴµ���? ������ ������ �̸� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 723, 150) > 0 or GetHench(cnum, 1, 724, 150) > 0 or GetHench(cnum, 1, 725, 150) > 0 or GetHench(cnum, 1, 726, 150) > 0 or GetHench(cnum, 1, 727, 150) > 0 or GetHench(cnum, 1, 743, 150) > 0 or GetHench(cnum, 1, 744, 150) > 0 or GetHench(cnum, 1, 745, 150) > 0 or GetHench(cnum, 1, 746, 150) > 0 or GetHench(cnum, 1, 747, 150) > 0 then -- ���� 150 �̻��� �̸��� �ִ��� �˻�
      if GetItemCount(cnum, 499, 0 ) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 723, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 723, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 724, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 724, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 725, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 725, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 726, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 726, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 727, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 727, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 743, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 743, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 744, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 744, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 745, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 745, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 746, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 746, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 747, 150) > 0 then
        if GetSwitchCount(cnum, 657) == 1 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 2 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 3 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 657) == 4 then
          AddHench(cnum, 747, -1)
          AddHenchAndState(cnum, 878, 0)
          SetSwitchCount(cnum, 653, 1)
          SetSwitchCount(cnum, 654, 1)
          SetSwitchCount(cnum, 655, 1)
          SetSwitchCount(cnum, 656, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 499, -30)
          AddItemCount(cnum, 500, -20)
          AddItemCount(cnum, 501, -10)
          EndQuest(cnum, 204)
          return 2,0,"�̸��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------

----------- ����Ʈ�� ���� ���� �� ------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 21 then -- ���� 130 �̻��� �ϳ��� �ֳ� �˻� �� ������ ���� 150���� Ű������� ����Ʈ ����

	  if GetSwitchCount(cnum, 660) > 1 then -- 2�� ����Ʈ�� ���� ������ üũ
			return 2,0,"��������� ������ �����Դ°���? [������ ����ü] 10��, [��ö ����] 30��, [���� ����] 20��, [���� ����] 10��",1356,"��~!"
		end

    if GetSwitchCount(cnum, 658) > 1 then -- 1�� ����Ʈ�� ���� ������ üũ
			return 2,0,"�ϳ� ���� 150���� Ű���Դ°���?",1326,"��~!"
		end


	--------- 1�� ����Ʈ�� �������� �ʾ��� �� -----------------

    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��
        if GetHench(cnum, 1, 728, 130) < 1 and GetHench(cnum, 1, 729, 130) < 1 and GetHench(cnum, 1, 730, 130) < 1 and GetHench(cnum, 1, 731, 130) < 1 and GetHench(cnum, 1, 732, 130) < 1 and GetHench(cnum, 1, 748, 130) < 1 and GetHench(cnum, 1, 749, 130) < 1 and GetHench(cnum, 1, 750, 130) < 1 and GetHench(cnum, 1, 751, 130) < 1 and GetHench(cnum, 1, 752, 130) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 130�� �Ǹ� ������ �ٽÿ��ʼ�! ������ ��ġ�� ���� ������� �ֽ���! �ѹ� Ű�������� �մϴٿ�!"
        else
          return 2,0,"��~�� �Ϳ��� �ϳ��� ��û�� �Ŀ��� ���� ���� �������µ���? �� ���� �ϳ��� ������ ������� ������ ���� �� �� ��������? �ϳ��� ������� ���� ���� ��������?",1306,"����;��!"
        end
			end
    else -- �ϳ��� ��Ʋ ������ ���
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end


  elseif req == 1306 then -- ��Ʋ ��ġ 1�� ����Ʈ
    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 and GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- �κ� üũ
			return 2,0,"���� ���� 150�� �Ѵ� �ϳ� ������ ��ŵ���??",1326,"��~!"
    else
      return 2,0,"��~�ϳ��� ���� 130�� �Ǿ��ٰ�� ������ ���� ������ ������� ���߽�ų ������ �ȵǴ� ����..�ϳ� ������ 150���� Ű������ ���� ���� ������ ���ε� �׷��� �غ��� ���� ����?",1316,"��"
    end   

  elseif req == 1316 then -- ��Ʋ ��ġ 1�� ����Ʈ ����
    SetSwitchCount(cnum, 658, 2)
    StartQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
    return 2,0,"�׷� �ϳ� ���� 150���� Ű�����ø� �ǰڴµ���? ��ٸ��ڽ��ϴٿ�!",51,"��"

-------------- 1�� ����Ʈ ���� �Ϸ� -------------------------------


  elseif req == 1326 then -- ��Ʋ ��ġ ���� 150 �˻�
    if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 and GetHench(cnum, 0, 748, 0) < 1 and GetHench(cnum, 0, 749, 0) < 1 and GetHench(cnum, 0, 750, 0) < 1 and GetHench(cnum, 0, 751, 0) < 1 and GetHench(cnum, 0, 752, 0) < 1 then -- ��Ʋ ���� üũ

			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 and GetHench(cnum, 1, 748, 0) < 1 and GetHench(cnum, 1, 749, 0) < 1 and GetHench(cnum, 1, 750, 0) < 1 and GetHench(cnum, 1, 751, 0) < 1 and GetHench(cnum, 1, 752, 0) < 1 then -- �κ� üũ
				return 2,0,"��?! �ϳ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else -- �ϳ��� ���� ��

        if GetHench(cnum, 1, 728, 150) < 1 and GetHench(cnum, 1, 729, 150) < 1 and GetHench(cnum, 1, 730, 150) < 1 and GetHench(cnum, 1, 731, 150) < 1 and GetHench(cnum, 1, 732, 150) < 1 and GetHench(cnum, 1, 748, 150) < 1 and GetHench(cnum, 1, 749, 150) < 1 and GetHench(cnum, 1, 750, 150) < 1 and GetHench(cnum, 1, 751, 150) < 1 and GetHench(cnum, 1, 752, 150) < 1 then -- �κ� üũ
          return 1,0,"�ϳ��� ���� 150�� �Ǿ�� ������ ������� ��� �� �ִµ���? ���� 150���� ���� ���ѿ��ʼ�!"
        else
          SetSwitchCount(cnum, 659, 2) -- �ϳ� 1�� ����Ʈ ����
          EndQuest(cnum, 205) -- �ϳ� 1�� ����Ʈ â
          return 2,0,"����ѵ���? �ϳ��� ��û�� ���� ���� �ִ� ����? ���� �ϳ��� ������� ��� �˸���! Ư���� ��ᰡ �ʿ��ѵ���!",1336,"� ����?"
        end

			end

    else
			return 2,0,"��~! �̷��� �ϳ� ������ ���� �ȵǴ� ����..�ϳ� �κ��丮�� �ְ� ���ʼ�!",51,"��"
    end

  elseif req == 1336 then -- �ϳ� 2�� ����Ʈ ����
    return 2,0,"�����ÿ¿����� ���ٴ� Ư���� ���� [������ ����ü] 10���� [��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �־�� �ϴµ���! [������ ����ü]�� �ƹ� ������ 10���� ������ �Ǵµ���. ���ؿ� �� �ְڽ���?",1346,"��~!"

  elseif req == 1346 then
    SetSwitchCount(cnum, 660, 2) -- 2�� ����Ʈ ����
    StartQuest(cnum, 206) -- �ϳ� 2�� ����Ʈ â
    return 1,0,"����� [��ö ����], [���� ����], [���� ����]�� ��, ��, �� ������ ��Ż ���Ϳ��Լ� ���� �� �ֽ���."


  elseif req == 1356 then

    if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
      return 1,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� �ִ��� Ȯ���غ��ž� �ǰڴµ���?"
    end

    if GetItemCount(cnum, 8624, 0) < 10 and GetItemCount(cnum, 8627, 0) < 10 and GetItemCount(cnum, 8630, 0) < 10 and GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[������ ����ü] 10���� ���� �� ��������?"
    else
      return 5,0,"���� �� [������ ����ü] 10���� ��ƿ��̽���?",1366,"[���� �� ������ ����ü]",1376,"[ȸ�� �� ������ ����ü]",1386,"[�Ķ� �� ������ ����ü]",1396,"[Ȳ�� �� ������ ����ü]"
    end

  elseif req == 1366 then
    if GetItemCount(cnum, 8624, 0) < 10 then
      return 1,0,"[���� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 1) -- ���� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1376 then
    if GetItemCount(cnum, 8627, 0) < 10 then
      return 1,0,"[ȸ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 2) -- ȸ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1386 then
    if GetItemCount(cnum, 8630, 0) < 10 then
      return 1,0,"[�Ķ� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 3) -- �Ķ� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 1396 then
    if GetItemCount(cnum, 8633, 0) < 10 then
      return 1,0,"[Ȳ�� �� ������ ����ü] 10���� ���µ���?"
    else
      SetSwitchCount(cnum, 662, 4) -- Ȳ�� �� ������ ����ü
      return 2,0,"���� ��ᰡ �� ������ �ϳ��� ������� ����� ��Ʋ��ġ�� ������ �����ְڽ���!",1400,"�ϳ� ��Ʋ��ġ�� ����!"
    end

  elseif req == 9999 then
      return 0

  ------------------------------------------------------------- �ϳ� ��Ʋ��ġ�� ---------------------------------------------------------------


  elseif req == 1400 then
    if GetSwitchCount(cnum, 662) == 1 then
      if GetItemCount(cnum, 8624, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 2 then
      if GetItemCount(cnum, 8627, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 3 then
      if GetItemCount(cnum, 8630, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    elseif GetSwitchCount(cnum, 662) == 4 then
      if GetItemCount(cnum, 8633, 0) < 10 then
        return 1,0,"��? ��ݱ��� �ִ� ��ᰡ ���� ���µ���? ���� ���̸� �ȵǴµ���?"
      end
    end



    if GetHench(cnum, 0, 728, 0) > 0 or GetHench(cnum, 0, 729, 0) > 0 or GetHench(cnum, 0, 730, 0) > 0 or GetHench(cnum, 0, 731, 0) > 0 or GetHench(cnum, 0, 732, 0) > 0 or GetHench(cnum, 0, 748, 0) > 0 or GetHench(cnum, 0, 749, 0) > 0 or GetHench(cnum, 0, 750, 0) > 0 or GetHench(cnum, 0, 751, 0) > 0 or GetHench(cnum, 0, 752, 0) > 0 then -- ��Ʋ ���� üũ
      return 1,0,"�̷��� �ϳ� ������ ������ �ȵǴ� ����!? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if  GetHench(cnum, 1, 728, 0) > 1 or GetHench(cnum, 1, 729, 0) > 1 or GetHench(cnum, 1, 730, 0) > 1 or GetHench(cnum, 1, 731, 0) > 1 or GetHench(cnum, 1, 732, 0) > 1 or GetHench(cnum, 1, 748, 0) > 1 or GetHench(cnum, 1, 749, 0) > 1 or GetHench(cnum, 1, 750, 0) > 1 or GetHench(cnum, 1, 751, 0) > 1 or GetHench(cnum, 1, 752, 0) > 1 then -- ���� idx�� ����ϴ� ��ġ�� �� ���� �̻� �ִ��� üũ
      return 1,0,"���Ž�ų �ϳ� �� ������ ������ �����;� �ϴµ���? ������ ������ �ϳ� �� ������ �κ��丮�� �־���ʼ�!"
    end

    if GetHench(cnum, 1, 728, 150) > 0 or GetHench(cnum, 1, 729, 150) > 0 or GetHench(cnum, 1, 730, 150) > 0 or GetHench(cnum, 1, 731, 150) > 0 or GetHench(cnum, 1, 732, 150) > 0 or GetHench(cnum, 1, 748, 150) > 0 or GetHench(cnum, 1, 749, 150) > 0 or GetHench(cnum, 1, 750, 150) > 0 or GetHench(cnum, 1, 751, 150) > 0 or GetHench(cnum, 1, 752, 150) > 0 then -- ���� 150 �̻��� �ϳ��� �ִ��� �˻�
      if GetItemCount(cnum, 483, 0 ) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
        return 1,0,"��� �������� ��� �ִ� �� �½���? �ѹ� Ȯ���� ���ʼ�!?"
      end

      if GetHench(cnum, 1, 728, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)


          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 728, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 729, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 729, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 730, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 730, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 731, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 731, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 732, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 732, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 748, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 748, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 749, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 749, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 750, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 750, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 751, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 751, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end

      elseif GetHench(cnum, 1, 752, 150) > 0 then
        if GetSwitchCount(cnum, 662) == 1 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8624, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 2 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8627, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 3 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8630, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        elseif GetSwitchCount(cnum, 662) == 4 then
          AddHench(cnum, 752, -1)
          AddHenchAndState(cnum, 879, 0)
          SetSwitchCount(cnum, 658, 1)
          SetSwitchCount(cnum, 659, 1)
          SetSwitchCount(cnum, 660, 1)
          SetSwitchCount(cnum, 661, 2)
          AddItemCount(cnum, 8633, -10)

          AddItemCount(cnum, 483, -30)
          AddItemCount(cnum, 484, -20)
          AddItemCount(cnum, 485, -10)
          EndQuest(cnum, 206)
          return 2,0,"�ϳ��� ������ ���� �ɷ��� ����⿡ �����߽��ϴٿ�!",9999,"�����ϴ�!"
        end
      end
    end





-------------------------------------------------------------------------------------------------------- ��Ʋ ��ġ -----------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 5 then
		return 5,0,"������� ��ġ ��ȯ���� �ֱ���!@����~ ������ ��ġ �߿�@� �༮�� ��ȯ���ΰ���?",6,"ġġ ��ġ ��ȯ��",7,"�޾� ��ġ ��ȯ��",8,"�̸� ��ġ ��ȯ��",9,"�ϳ� ��ġ ��ȯ��"





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 2 then
		if GetItemCount(cnum, 6487, 0) < 1 and GetItemCount(cnum, 6488, 0) < 1 and GetItemCount(cnum, 6489, 0) < 1 and GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 5,0,"�һ���! ���� �༮������~@������ �˷��ֽñ���~",12,"�һ��� ��ȯ��(Lv.40)",13,"�һ��� ��ȯ��(Lv.60)",14,"�һ��� ��ȯ��(Lv.80)",15,"�һ��� ��ȯ��(Lv.100)"


		end


	elseif req == 3 then
		if GetItemCount(cnum, 1401, 0) < 1 and GetItemCount(cnum, 1402, 0) < 1 and GetItemCount(cnum, 1403, 0) < 1 and GetItemCount(cnum, 1404, 0) < 1 and GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"���ø���! ���� �༮������~@������ �˷��ֽñ���~",22,"���ø��� ��ȯ��(Lv.40)",23,"���ø��� ��ȯ��(Lv.60)",24,"���ø��� ��ȯ��(Lv.80)",25,"���ø��� ��ȯ��(Lv.100)",26,"���ø��� ��ȯ��(Lv.120)"


		end



	elseif req == 4 then
		if GetItemCount(cnum, 1406, 0) < 1 and GetItemCount(cnum, 1407, 0) < 1 and GetItemCount(cnum, 1408, 0) < 1 and GetItemCount(cnum, 1409, 0) < 1 and GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"����! ���� �༮������~@������ �˷��ֽñ���~",52,"���� ��ȯ��(Lv.40)",53,"���� ��ȯ��(Lv.60)",54,"���� ��ȯ��(Lv.80)",55,"���� ��ȯ��(Lv.100)",56,"���� ��ȯ��(Lv.120)"


		end

-------------------------------------------- ������ ��ġ ��ȯ�� �˻� �� ���� ����

	elseif req == 6 then  -- ġġ
		if GetItemCount(cnum, 8516, 0) < 1 and GetItemCount(cnum, 8517, 0) < 1 and GetItemCount(cnum, 8518, 0) < 1 and GetItemCount(cnum, 8519, 0) < 1 and GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"ġġ! ���� �༮������~@������ �˷��ֽñ���~",62,"ġġ ��ȯ��(Lv.40)",63,"ġġ ��ȯ��(Lv.60)",64,"ġġ ��ȯ��(Lv.80)",65,"ġġ ��ȯ��(Lv.100)",66,"ġġ ��ȯ��(Lv.120)"


		end

	elseif req == 7 then -- �޾�
		if GetItemCount(cnum, 8521, 0) < 1 and GetItemCount(cnum, 8522, 0) < 1 and GetItemCount(cnum, 8523, 0) < 1 and GetItemCount(cnum, 8524, 0) < 1 and GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�޾�! ���� �༮������~@������ �˷��ֽñ���~",72,"�޾� ��ȯ��(Lv.40)",73,"�޾� ��ȯ��(Lv.60)",74,"�޾� ��ȯ��(Lv.80)",75,"�޾� ��ȯ��(Lv.100)",76,"�޾� ��ȯ��(Lv.120)"


		end


	elseif req == 8 then  -- �̸�
		if GetItemCount(cnum, 8526, 0) < 1 and GetItemCount(cnum, 8527, 0) < 1 and GetItemCount(cnum, 8528, 0) < 1 and GetItemCount(cnum, 8529, 0) < 1 and GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�̸�! ���� �༮������~@������ �˷��ֽñ���~",82,"�̸� ��ȯ��(Lv.40)",83,"�̸� ��ȯ��(Lv.60)",84,"�̸� ��ȯ��(Lv.80)",85,"�̸� ��ȯ��(Lv.100)",86,"�̸� ��ȯ��(Lv.120)"


		end

	elseif req == 9 then -- �ϳ�
		if GetItemCount(cnum, 8531, 0) < 1 and GetItemCount(cnum, 8532, 0) < 1 and GetItemCount(cnum, 8533, 0) < 1 and GetItemCount(cnum, 8534, 0) < 1 and GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� ��@��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 6,0,"�ϳ�! ���� �༮������~@������ �˷��ֽñ���~",92,"�ϳ� ��ȯ��(Lv.40)",93,"�ϳ� ��ȯ��(Lv.60)",94,"�ϳ� ��ȯ��(Lv.80)",95,"�ϳ� ��ȯ��(Lv.100)",96,"�ϳ� ��ȯ��(Lv.120)"


		end



------------
-- ġġ
------------



	elseif req == 10 then -- ġġ ���ڷ� ��ȯ
		if GetHench(cnum, 0, 713, 0) < 1 and GetHench(cnum, 0, 714, 0) < 1 and GetHench(cnum, 0, 715, 0) < 1 and GetHench(cnum, 0, 716, 0) < 1 and GetHench(cnum, 0, 717, 0) < 1 then
			if GetHench(cnum, 1, 713, 0) < 1 and GetHench(cnum, 1, 714, 0) < 1 and GetHench(cnum, 1, 715, 0) < 1 and GetHench(cnum, 1, 716, 0) < 1 and GetHench(cnum, 1, 717, 0) < 1 then
				return 2,0,"��?! ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ ġġ�� �޾Ҵ��� �˷��ֽñ���~~",1001,"ġġ(Lv.40)",1002,"ġġ(Lv.60)",1003,"ġġ(Lv.80)",1004,"ġġ(Lv.100)",1005,"ġġ(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� ġġ�� ������ ���� �ȵǴ� ����..ġġ�� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1001 then
		if GetHench(cnum, 1, 713, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 713, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 713, 50) < 1 then
			return 2,0,"��?! ġġ�� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1002 then
		if GetHench(cnum, 1, 714, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 714, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 714, 70) < 1 then
			return 2,0,"��?! ġġ�� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1003 then
		if GetHench(cnum, 1, 715, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 715, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 715, 90) < 1 then
			return 2,0,"��?! ġġ�� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1004 then
		if GetHench(cnum, 1, 716, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 716, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 716, 110) < 1 then
			return 2,0,"��?! ġġ�� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end

	elseif req == 1005 then
		if GetHench(cnum, 1, 717, 0) < 1 then
			return 2,0,"��?! �׷� ġġ�� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 717, 0) > 1 then
			return 2,0,"ġġ�� �� ������ �ƴѵ���? ������ ��ȯ�� ġġ �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� ġġ �Ѹ�����!"
		end

		if GetHench(cnum, 1, 717, 130) < 1 then
			return 2,0,"��?! ġġ�� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� ġġ�� ���׷��̵�! ��ġġ��!!",100,"��"
		end



	elseif req == 100 then -- ġġ ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 713, 50) > 0 then
				AddHenchAndState(cnum, 733, 0)
				AddHench(cnum, 713, -1)

			elseif GetHench(cnum, 1, 714, 70) > 0 then
				AddHenchAndState(cnum, 734, 0)
				AddHench(cnum, 714, -1)

			elseif GetHench(cnum, 1, 715, 90) > 0 then
				AddHenchAndState(cnum, 735, 0)
				AddHench(cnum, 715, -1)

			elseif GetHench(cnum, 1, 716, 110) > 0 then
				AddHenchAndState(cnum, 736, 0)
				AddHench(cnum, 716, -1)

			elseif GetHench(cnum, 1, 717, 130) > 0 then
				AddHenchAndState(cnum, 737, 0)
				AddHench(cnum, 717, -1)
			end
		end

------------
-- �޾�
------------


	elseif req == 11 then -- �޾� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 718, 0) < 1 and GetHench(cnum, 0, 719, 0) < 1 and GetHench(cnum, 0, 720, 0) < 1 and GetHench(cnum, 0, 721, 0) < 1 and GetHench(cnum, 0, 722, 0) < 1 then
			if GetHench(cnum, 1, 718, 0) < 1 and GetHench(cnum, 1, 719, 0) < 1 and GetHench(cnum, 1, 720, 0) < 1 and GetHench(cnum, 1, 721, 0) < 1 and GetHench(cnum, 1, 722, 0) < 1 then
				return 2,0,"��?! �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �޾��� �޾Ҵ��� �˷��ֽñ���~~",1011,"�޾�(Lv.40)",1012,"�޾�(Lv.60)",1013,"�޾�(Lv.80)",1014,"�޾�(Lv.100)",1015,"�޾�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �޾��� ������ ���� �ȵǴ� ����..�޾��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1011 then
		if GetHench(cnum, 1, 718, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 718, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 718, 50) < 1 then
			return 2,0,"��?! �޾��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1012 then
		if GetHench(cnum, 1, 719, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 719, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 719, 70) < 1 then
			return 2,0,"��?! �޾��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1013 then
		if GetHench(cnum, 1, 720, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 720, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 720, 90) < 1 then
			return 2,0,"��?! �޾��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1014 then
		if GetHench(cnum, 1, 721, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 721, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 721, 110) < 1 then
			return 2,0,"��?! �޾��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end

	elseif req == 1015 then
		if GetHench(cnum, 1, 722, 0) < 1 then
			return 2,0,"��?! �׷� �޾��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 722, 0) > 1 then
			return 2,0,"�޾��� �� ������ �ƴѵ���? ������ ��ȯ�� �޾� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �޾� �� ������!"
		end

		if GetHench(cnum, 1, 722, 130) < 1 then
			return 2,0,"��?! �޾��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �޾��� ���׷��̵�! ���޾�����!!",101,"��"
		end


	elseif req == 101 then -- �޾� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 718, 50) > 0 then
				AddHenchAndState(cnum, 738, 0)
				AddHench(cnum, 718, -1)

			elseif GetHench(cnum, 1, 719, 70) > 0 then
				AddHenchAndState(cnum, 739, 0)
				AddHench(cnum, 719, -1)

			elseif GetHench(cnum, 1, 720, 90) > 0 then
				AddHenchAndState(cnum, 740, 0)
				AddHench(cnum, 720, -1)

			elseif GetHench(cnum, 1, 721, 110) > 0 then
				AddHenchAndState(cnum, 741, 0)
				AddHench(cnum, 721, -1)

			elseif GetHench(cnum, 1, 722, 130) > 0 then
				AddHenchAndState(cnum, 742, 0)
				AddHench(cnum, 722, -1)
			end
		end

------------
-- �̸�
------------
	elseif req == 16 then -- �̸� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 723, 0) < 1 and GetHench(cnum, 0, 724, 0) < 1 and GetHench(cnum, 0, 725, 0) < 1 and GetHench(cnum, 0, 726, 0) < 1 and GetHench(cnum, 0, 727, 0) < 1 then
			if GetHench(cnum, 1, 723, 0) < 1 and GetHench(cnum, 1, 724, 0) < 1 and GetHench(cnum, 1, 725, 0) < 1 and GetHench(cnum, 1, 726, 0) < 1 and GetHench(cnum, 1, 727, 0) < 1 then
				return 2,0,"��?! �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �̸��� �޾Ҵ��� �˷��ֽñ���~~",1021,"�̸�(Lv.40)",1022,"�̸�(Lv.60)",1023,"�̸�(Lv.80)",1024,"�̸�(Lv.100)",1025,"�̸�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �̸��� ������ ���� �ȵǴ� ����..�̸��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end


	elseif req == 1021 then
		if GetHench(cnum, 1, 723, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 723, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 723, 50) < 1 then
			return 2,0,"��?! �̸��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1022 then
		if GetHench(cnum, 1, 724, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 724, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 724, 70) < 1 then
			return 2,0,"��?! �̸��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1023 then
		if GetHench(cnum, 1, 725, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 725, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 725, 90) < 1 then
			return 2,0,"��?! �̸��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1024 then
		if GetHench(cnum, 1, 726, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 726, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 726, 110) < 1 then
			return 2,0,"��?! �̸��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end

	elseif req == 1025 then
		if GetHench(cnum, 1, 727, 0) < 1 then
			return 2,0,"��?! �׷� �̸��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 727, 0) > 1 then
			return 2,0,"�̸��� �� ������ �ƴѵ���? ������ ��ȯ�� �̸� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �̸� �� ������!"
		end

		if GetHench(cnum, 1, 727, 130) < 1 then
			return 2,0,"��?! �̸��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �̸��� ���׷��̵�! ���̸���!!",102,"��"
		end



	elseif req == 102 then -- �̸� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 723, 50) > 0 then
				AddHenchAndState(cnum, 743, 0)
				AddHench(cnum, 723, -1)

			elseif GetHench(cnum, 1, 724, 70) > 0 then
				AddHenchAndState(cnum, 744, 0)
				AddHench(cnum, 724, -1)

			elseif GetHench(cnum, 1, 725, 90) > 0 then
				AddHenchAndState(cnum, 745, 0)
				AddHench(cnum, 725, -1)

			elseif GetHench(cnum, 1, 726, 110) > 0 then
				AddHenchAndState(cnum, 746, 0)
				AddHench(cnum, 726, -1)

			elseif GetHench(cnum, 1, 727, 130) > 0 then
				AddHenchAndState(cnum, 747, 0)
				AddHench(cnum, 727, -1)
			end
		end


------------
-- �ϳ�
------------
	elseif req == 17 then -- �ϳ� ���ڷ� ��ȯ
		if GetHench(cnum, 0, 728, 0) < 1 and GetHench(cnum, 0, 729, 0) < 1 and GetHench(cnum, 0, 730, 0) < 1 and GetHench(cnum, 0, 731, 0) < 1 and GetHench(cnum, 0, 732, 0) < 1 then
			if GetHench(cnum, 1, 728, 0) < 1 and GetHench(cnum, 1, 729, 0) < 1 and GetHench(cnum, 1, 730, 0) < 1 and GetHench(cnum, 1, 731, 0) < 1 and GetHench(cnum, 1, 732, 0) < 1 then
				return 2,0,"��?! �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
			else
				return 6,0,"ó�� �� ������ �ϳ��� �޾Ҵ��� �˷��ֽñ���~~",1031,"�ϳ�(Lv.40)",1032,"�ϳ�(Lv.60)",1033,"�ϳ�(Lv.80)",1034,"�ϳ�(Lv.100)",1035,"�ϳ�(Lv.120)"
			end
		else
			return 2,0,"��~! �̷��� �ϳ��� ������ ���� �ȵǴ� ����..�ϳ��� �κ��丮�� �ְ� ���ʼ�!",51,"��"
		end

	elseif req == 1031 then
		if GetHench(cnum, 1, 728, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 728, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 728, 50) < 1 then
			return 2,0,"��?! �ϳ��� ������ 50���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1032 then
		if GetHench(cnum, 1, 729, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 729, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 729, 70) < 1 then
			return 2,0,"��?! �ϳ��� ������ 70���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1033 then
		if GetHench(cnum, 1, 730, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 730, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 730, 90) < 1 then
			return 2,0,"��?! �ϳ��� ������ 90���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1034 then
		if GetHench(cnum, 1, 731, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 731, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 731, 110) < 1 then
			return 2,0,"��?! �ϳ��� ������ 110���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end

	elseif req == 1035 then
		if GetHench(cnum, 1, 732, 0) < 1 then
			return 2,0,"��?! �׷� �ϳ��� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."
		end

		if GetHench(cnum, 1, 732, 0) > 1 then
			return 2,0,"�ϳ��� �� ������ �ƴѵ���? ������ ��ȯ�� �ϳ� �� ������ ������ �ٽ� ���ʼ�!",51,"�� ��ȯ�� �ϳ� �� ������!"
		end

		if GetHench(cnum, 1, 732, 130) < 1 then
			return 2,0,"��?! �ϳ��� ������ 130���� ����� �ٽ� ���ʼ�! ���� ���ڸ��׿�!",51,"��"
		else
			return 2,0,"�Ǹ��ѵ���? �� �׷� �ϳ��� ���׷��̵�! ���ϳ�����!!",103,"��"
		end




	elseif req == 103 then -- �ϳ� ��ȯ
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."
		else
			EndQuest(cnum, 187)
			SetSwitchCount(cnum, 532, 0)
			if GetHench(cnum, 1, 728, 50) > 0 then
				AddHenchAndState(cnum, 748, 0)
				AddHench(cnum, 728, -1)

			elseif GetHench(cnum, 1, 729, 70) > 0 then
				AddHenchAndState(cnum, 749, 0)
				AddHench(cnum, 729, -1)

			elseif GetHench(cnum, 1, 730, 90) > 0 then
				AddHenchAndState(cnum, 750, 0)
				AddHench(cnum, 730, -1)

			elseif GetHench(cnum, 1, 731, 110) > 0 then
				AddHenchAndState(cnum, 751, 0)
				AddHench(cnum, 731, -1)

			elseif GetHench(cnum, 1, 732, 130) > 0 then
				AddHenchAndState(cnum, 752, 0)
				AddHench(cnum, 732, -1)
			end
		end






------------------
--�һ���
------------------




	elseif req == 12 then
		if GetItemCount(cnum, 6487, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",32,"�׳�~"


		end


	elseif req == 32 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6487, -1)
			AddHenchAndiSp(cnum, 800, 2)

		end

-----


	elseif req == 13 then
		if GetItemCount(cnum, 6488, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",33,"�׳�~"


		end


	elseif req == 33 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6488, -1)
			AddHenchAndiSp(cnum, 801, 2)

		end

--------


	elseif req == 14 then
		if GetItemCount(cnum, 6489, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",34,"�׳�~"


		end


	elseif req == 34 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6489, -1)
			AddHenchAndiSp(cnum, 802, 2)

		end


-----------


	elseif req == 15 then
		if GetItemCount(cnum, 6490, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",35,"�׳�~"


		end


	elseif req == 35 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 6490, -1)
			AddHenchAndiSp(cnum, 803, 2)

		end




--------------
--���ø���
--------------



	elseif req == 22 then
		if GetItemCount(cnum, 1401, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",42,"�׳�~"


		end


	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1401, -1)
			AddHenchAndiSp(cnum, 804, 2)

		end

-----


	elseif req == 23 then
		if GetItemCount(cnum, 1402, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",43,"�׳�~"


		end


	elseif req == 43 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1402, -1)
			AddHenchAndiSp(cnum, 805, 2)

		end

--------


	elseif req == 24 then
		if GetItemCount(cnum, 1403, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",44,"�׳�~"


		end


	elseif req == 44 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1403, -1)
			AddHenchAndiSp(cnum, 806, 2)

		end


-----------


	elseif req == 25 then
		if GetItemCount(cnum, 1404, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",45,"�׳�~"


		end


	elseif req == 45 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1404, -1)
			AddHenchAndiSp(cnum, 807, 2)

		end


-----------------



	elseif req == 26 then
		if GetItemCount(cnum, 1405, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",46,"�׳�~"


		end


	elseif req == 46 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1405, -1)
			AddHenchAndiSp(cnum, 808, 2)

		end




-------------------------------------
--����
-------------------------------------

	elseif req == 52 then
		if GetItemCount(cnum, 1406, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",521,"�׳�~"


		end


	elseif req == 521 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1406, -1)
			AddHenchAndiSp(cnum, 809, 2)

		end

-----


	elseif req == 53 then
		if GetItemCount(cnum, 1407, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",531,"�׳�~"


		end


	elseif req == 531 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1407, -1)
			AddHenchAndiSp(cnum, 810, 2)

		end

--------


	elseif req == 54 then
		if GetItemCount(cnum, 1408, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",541,"�׳�~"


		end


	elseif req == 541 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1408, -1)
			AddHenchAndiSp(cnum, 811, 2)

		end


-----------


	elseif req == 55 then
		if GetItemCount(cnum, 1409, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",551,"�׳�~"


		end


	elseif req == 551 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1409, -1)
			AddHenchAndiSp(cnum, 812, 2)

		end


-----------------



	elseif req == 56 then
		if GetItemCount(cnum, 1410, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",561,"�׳�~"


		end


	elseif req == 561 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 1410, -1)
			AddHenchAndiSp(cnum, 813, 2)

		end



-------------------------------------
-- ġġ
-------------------------------------

	elseif req == 62 then
		if GetItemCount(cnum, 8516, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",621,"�׳�~"


		end


	elseif req == 621 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8516, -1)
			AddHenchAndState(cnum, 713, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----


	elseif req == 63 then
		if GetItemCount(cnum, 8517, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",631,"�׳�~"


		end


	elseif req == 631 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8517, -1)
			AddHenchAndState(cnum, 714, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 64 then
		if GetItemCount(cnum, 8518, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",641,"�׳�~"


		end


	elseif req == 641 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8518, -1)
			AddHenchAndState(cnum, 715, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 65 then
		if GetItemCount(cnum, 8519, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",651,"�׳�~"


		end


	elseif req == 651 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8519, -1)
			AddHenchAndState(cnum, 716, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 66 then
		if GetItemCount(cnum, 8520, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",661,"�׳�~"


		end


	elseif req == 661 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8520, -1)
			AddHenchAndState(cnum, 717, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� ġġ�� ��������@10�̻� ������ѿ��� ���� ��ġġ�� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �޾�
-------------------------------------

	elseif req == 72 then
		if GetItemCount(cnum, 8521, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",721,"�׳�~"


		end


	elseif req == 721 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8521, -1)
			AddHenchAndState(cnum, 718, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 73 then
		if GetItemCount(cnum, 8522, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",731,"�׳�~"


		end


	elseif req == 731 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8522, -1)
			AddHenchAndState(cnum, 719, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 74 then
		if GetItemCount(cnum, 8523, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",741,"�׳�~"


		end


	elseif req == 741 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8523, -1)
			AddHenchAndState(cnum, 720, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 75 then
		if GetItemCount(cnum, 8524, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",751,"�׳�~"


		end


	elseif req == 751 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8524, -1)
			AddHenchAndState(cnum, 721, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 76 then
		if GetItemCount(cnum, 8525, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",761,"�׳�~"


		end


	elseif req == 761 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8525, -1)
			AddHenchAndState(cnum, 722, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �޾��� ��������@10�̻� ������ѿ��� ���� ���޾����� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �̸�
-------------------------------------

	elseif req == 82 then
		if GetItemCount(cnum, 8526, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",821,"�׳�~"


		end


	elseif req == 821 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8526, -1)
			AddHenchAndState(cnum, 723, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 83 then
		if GetItemCount(cnum, 8527, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",831,"�׳�~"


		end


	elseif req == 831 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8527, -1)
			AddHenchAndState(cnum, 724, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 84 then
		if GetItemCount(cnum, 8528, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",841,"�׳�~"


		end


	elseif req == 841 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8528, -1)
			AddHenchAndState(cnum, 725, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 85 then
		if GetItemCount(cnum, 8529, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",851,"�׳�~"


		end


	elseif req == 851 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8529, -1)
			AddHenchAndState(cnum, 726, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 86 then
		if GetItemCount(cnum, 8530, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",861,"�׳�~"


		end


	elseif req == 861 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8530, -1)
			AddHenchAndState(cnum, 727, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �̸��� ��������@10�̻� ������ѿ��� ���� ���̸��� ���׷��̵� �� �帮����!",51,"��~"
		end



-------------------------------------
-- �ϳ�
-------------------------------------

	elseif req == 92 then
		if GetItemCount(cnum, 8531, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",921,"�׳�~"


		end


	elseif req == 921 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8531, -1)
			AddHenchAndState(cnum, 728, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end
-----


	elseif req == 93 then
		if GetItemCount(cnum, 8532, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",931,"�׳�~"


		end


	elseif req == 931 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8532, -1)
			AddHenchAndState(cnum, 729, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

--------


	elseif req == 94 then
		if GetItemCount(cnum, 8533, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",941,"�׳�~"


		end


	elseif req == 941 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8533, -1)
			AddHenchAndState(cnum, 730, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------


	elseif req == 95 then
		if GetItemCount(cnum, 8534, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",951,"�׳�~"


		end


	elseif req == 951 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8534, -1)
			AddHenchAndState(cnum, 731, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end

-----------------



	elseif req == 96 then
		if GetItemCount(cnum, 8535, 0) < 1 then
			return 2,0,"��?! �׷� ��ȯ���� ���� �� ��������?",51,"�׷�����? �ٽ� ���Կ�."


		else
			return 2,0,"��~ ���� �ֽ��ϴ�!@�� �༮ ������ ������~@�ھ�~ Ű��������~",961,"�׳�~"


		end


	elseif req == 961 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮�� �� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8535, -1)
			AddHenchAndState(cnum, 732, 0)
			return 2,0,"�Ѱ��� ��!@���� ���� �ϳ��� ��������@10�̻� ������ѿ��� ���� ���ϳ����� ���׷��̵� �� �帮����!",51,"��~"
		end


	else
		return 0


	end




end


