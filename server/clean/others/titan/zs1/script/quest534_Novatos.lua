NPC_QUEST_383 = function(cnum, reqNumber)
  name = GetHeroName(cnum)
  req = reqNumber
  if req == 1 then
    return 2, 0, "<<NPC Inicial>>@@Ola novo membro, seja bem vindo ao servidor mixmaster titan. \n\nO servidor vai le dar alguns presentes ao comecar a jogar.", 2, "Mover para magirita."
  elseif req == 2 then
    EndQuest(cnum, 161)
    EndQuest(cnum, 162)
    EndQuest(cnum, 163)
    AddItemCount(cnum, 8423, -999)
    AddItemCount(cnum, 8326, 1)
    AddItemCount(cnum, 8593, 99)
    AddItemCount(cnum, 8115, 10)
    AddItemCount(cnum, 5904, 1)
    AddItemCount(cnum, 5905, 1)
    AddItemCount(cnum, 5906, 1)
    AddItemCount(cnum, 5907, 1)
    AddItemCount(cnum, 5908, 1)
    AddItemCount(cnum, 5908, 1)
    AddItemCount(cnum, 5909, 1)
    AddItemCount(cnum, 5909, 1)
    AddItemCount(cnum, 5910, 1)
    AddHench(cnum, 208, 1)
    AddHench(cnum, 208, 1)
    AddHench(cnum, 208, 1)
    AddHench(cnum, 341, 1)
    AddHench(cnum, 327, 1)
    AddHench(cnum, 278, 1)
    MoveZone(cnum, 57, 254)
    SetReviveZone(cnum, 57)
  else
    return 0
  end
end


