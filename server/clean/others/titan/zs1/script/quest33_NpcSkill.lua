local uppage, nowskill = nil, nil
NPC_QUEST_267 = function(cnum, reqNumber)
  -- upvalues: uppage , nowskill
  local skillinfo = {
[82] = {name = "Escudo", id = 1, price = 3000, desc = "Uma habilidade que pode aumentar o poder defensivo"}, 
[83] = {name = "Strike", id = 2, price = 5000, desc = "Uma habilidade que pode aumentar o poder de atack"}, 
[84] = {name = "Counter", id = 3, price = 4000, desc = "Esta habilidade lhe da um escuto que todos os ataques voltam para seu oponente"}, 
[85] = {name = "Stun", id = 4, price = 30000, desc = "Uma habilidade que paralisa o oponente"}, 
[86] = {name = "Drain", id = 5, price = 10000, desc = "O HP do alvo e roubado pelo usuario"}, 
[87] = {name = "Healing", id = 6, price = 6000, desc = "Uma ben玢o que aumenta o HP ao ser usado"}, 
[88] = {name = "Shield", id = 7, price = 4000, desc = "Da um escuto incrivelmente forte"}, 
[89] = {name = "Fire Breath", id = 8, price = 6000, desc = "Convoca uma bola de fogo"}, 
[90] = {name = "Poison", id = 23, price = 20000, desc = "Evenena o inimigo"}, 
[91] = {name = "Blaze", id = 24, price = 20000, desc = "Um golpe de chama. O dano vai continuar por um curto tempo"}, 
[92] = {name = "Purify", id = 25, price = 10000, desc = "Habilidade que tira o veneno"}, 
[93] = {name = "Slow", id = 26, price = 15000, desc = "Deixa o inimigo mais lento"}, 
[94] = {name = "Freeze", id = 27, price = 15000, desc = "使对方在一定时间内的攻击速度减慢"}, 
[95] = {name = "Zeal", id = 28, price = 10000, desc = "Aumenta a velocidade de atack"}, 
[96] = {name = "Haste", id = 29, price = 10000, desc = "Aumenta a velocidade."}}
  req = reqNumber
  if req == 1 then
    return 3, 0, "Aprenda varias skill, faca uma combinacao perfeita para voce ganhar no pvp", 52, "Qual e a capacidade de aprendizagem?", 53, "capacidade de aprendizagem"
  elseif req == 52 then
    return 5, 0, "Aprenda um pouco mais sobre cada opcao de skill", 62, "1.Aprender Skills", 63, "2.Aquisicao de Competencias", 64, "3.Usando as habilidades", 1, "voltar"
  elseif req == 53 then
    return 5, 0, "Por favor selecione a habilidade.", 72, "Habilidade de Defesa", 73, "Habilidade Ofenciva", 74, "Habilidade Magica", 1, "voltar"
  elseif req == 62 then
    return 2, 0, "No MixMaster as skill sao importantes, como eles sao muitas nao sei todas as habilidades, a menos que use o  meu apoio. Diga oque voce gostaria de aprender e voce deve sacrificar um pouco de GP.", 52, "voltar"
  elseif req == 63 then
    return 2, 0, "So por sacrificar algum dinheiro para aprender alguma habilidade voce vai ter como gastar seus pontos SP, que voce recebe ao upar de level. Voce sacrifica algums para poder aprender habilidades", 52, "voltar"
  elseif req == 64 then
    return 2, 0, "Voce pode usar habilidades contra o seu inimigo usando o MP. Seu personagem consecutivamente embora. Voce tenha que esperar um tempo para poder usar novamente alguma habilidade.", 52, "voltar"
  elseif req == 72 then
    return 5, 0, "Escolha a habilidade que voce quer aprender.", 82, "1.Escudo", 84, "3.Counter", 88, "3.Shield", 53, "voltar"
  elseif req == 73 then
    return 6, 0, "Escolha a habilidade que voce quer aprender.", 89, "1.Fire Breath", 86, "2.Drain", 90, "3.Poison", 91, "4.Blaze", 53, "voltar"
  elseif req == 74 then
    return 10, 0, "Escolha a habilidade que voce quer aprender.", 85, "1.Stun", 83, "2.Strike", 87, "3.Healing", 92, "4.Purify", 93, "5.Slow", 94, "6.Freeze", 95, "7.Zeal", 96, "8.Haste", 53, "voltar"
  elseif req > 81 and req < 97 then
    if req > 81 and req < 85 then
      uppage = 72
    elseif req > 84 and req < 89 then
      uppage = 73
    else
      uppage = 74
    end
    nowskill = req
    return 4, 0, "Gostaria de aprender a habilidade" .. skillinfo[nowskill].name, 120, "Explicacao da habilidade", 121, "Aprender habilidade", uppage, "voltar"
  elseif req == 120 then
    return 2, 0, skillinfo[nowskill].desc .. "@Voce vai gastar um pouco de GP:" .. skillinfo[nowskill].price, nowskill, "voltar"
  elseif req == 121 then
    return 4, 0, "你想学习" .. skillinfo[nowskill].name .. "吗？@oce vai gastar um pouco de GP:" .. skillinfo[nowskill].price, 201, "Sim", 202, "nao", nowskill, "voltar"
  elseif req == 201 then
    learn = LearnSkill(cnum, skillinfo[nowskill].id)
    if learn == 1 then
      return 2, 0, "对不起，你已经学习过此技能", nowskill, "voltar"
    elseif learn == 2 then
      return 2, 0, "不符合条件", nowskill, "voltar"
    elseif learn == 5 then
      return 2, 0, "GP不够！学习此技能需要GP:" .. skillinfo[nowskill].price, nowskill, "voltar"
    elseif learn == 0 then
      return 1, 0, "你已经成功学习了" .. skillinfo[nowskill].name
    else
      return 0
    end
  elseif req == 202 then
    return 1, 0, "嗯,请思考自己所需要学习的技能后,再做决定."
  end
end

NPC_QUEST_256 = function(cnum, reqNumber)
  -- upvalues: nowskill
  local skillinfo = {
[22] = {name = "Power Deter", id = 9, price = 70000, need = "Escudo或者Strike或者Drain或者Shield", desc = "Dar um dano em um certo inimigo."}, 
[23] = {name = "Gravity Force", id = 10, price = 70000, need = "Escudo或者Strike或者Drain或者Shield", desc = "Dar um dano em um certo inimigo."}, 
[24] = {name = "Shock Wave", id = 11, price = 100000, need = "Stun", desc = "Possivel paralisar uma grande area"}, 
[25] = {name = "Healing Wave", id = 12, price = 90000, need = "Healing", desc = "Possivel curar todos que estiverem perto."}, 
[26] = {name = "Holy Fire", id = 13, price = 90000, need = "Fire Breath", desc = "Uma onda de bolas de fogo que pode matar quase tudo"}, 
[27] = {name = "Purifying Wave", id = 30, price = 90000, need = "Purify", desc = "Uma habilidade que faz a purificacao de uma grande area"}, 
[28] = {name = "Poison Shock", id = 31, price = 90000, need = "Poison", desc = "Habilidade que envenena o oponente selecionado e todos os oponentes perto."}}
  req = reqNumber
  if req == 1 then
    return 3, 0, "Aprenda algumas habilidades mais fortes", 2, "Qual a capacidade de aprendizagem?", 3, "Capacidade de aprendizagem!"
  elseif req == 2 then
    return 4, 0, "二阶技能是一阶技能的提升。技能变得更加强大，并且攻击范围也变大。学习技能不是那么容易的，你不可能在一夜之间就能把所有技能都学会", 12, "所有技能？", 13, "需要什么条件呢？", 1, "voltar"
  elseif req == 3 then
    return 9, 0, "Selecione alguma habilidade que voce queira aprender mais voce tem que ter a primeira habilidade no nivel maximo", 22, "Power Deter.", 23, "Gravity Force.", 24, "Shock Wave.", 25, "Healing Wave.", 26, "Holy Fire.", 27, "Purifying Wave.", 28, "Poison Shock.", 1, "voltar"
  elseif req == 12 then
    return 2, 0, "Habilidades secundarias, as seguintes habilidades sao mais fortes", 2, "voltar"
  elseif req == 13 then
    return 2, 0, "要学习更多的技能，你必须先要掌握一阶技能。", 2, "voltar"
  elseif req > 21 and req < 29 then
    nowskill = req
    return 4, 0, skillinfo[req].desc .. "。@学习此技能需要GP:" .. skillinfo[req].price, 202, "是.", 203, "否.", 3, "voltar"
  elseif req == 202 then
    learn = LearnSkill(cnum, skillinfo[nowskill].id)
    if learn == 1 then
      return 2, 0, "对不起，你已经学习过此技能", 3, "voltar"
    elseif learn == 2 then
      return 2, 0, "不符合条件", 3, "voltar"
    elseif learn == 3 then
      return 2, 0, "要想学习" .. skillinfo[nowskill].name .. ",你必须先要学会" .. skillinfo[nowskill].need, 3, "voltar"
    elseif learn == 4 then
      return 2, 0, "你还不能学习本技能,因为你的" .. skillinfo[nowskill].need .. "还没达到最高等级", 3, "voltar"
    elseif learn == 5 then
      return 2, 0, "GP不够！@学习此技能需要GP:" .. skillinfo[req].price, 3, "voltar"
    elseif learn == 0 then
      return 1, 0, "你已经成功学习过此技能"
    else
      return 0
    end
  elseif req == 203 then
    return 1, 0, "嗯,请思考自己所需要学习的技能后,在做决定."
  else
    return 1, 0, "错误！"
  end
end


