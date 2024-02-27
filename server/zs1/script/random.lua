function NPC_QUEST_2000(cnum,reqNumber)
    local req = reqNumber

    if req == 1 then
        return 3,0,"Queires tomar no cu outra vez?",2,"Aora vai ser mais dificile",3,"Pero puede nom ser difice",4,"Mi patron queire lá merda"

    elseif req == 4 then
        AddItemCount(cnum, 311, 1)
        return 3,0,"Então é só toma"
    end
end