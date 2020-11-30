--- Outlaw Start---
function CanReRoll(event, ...)
    local _, _, _, _, spellID = ...
    spellID = spellID or 0
    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == "PLAYER_AURAS_CHANGED" then
        return false
    end
    local rogueBuffID = { ["attackspeed"] = 193358, ["shadowstrike"] = 199603, ["cooldown"] = 193359, ["pistolcrit"] = 193357,["energy"] = 199600,["combopoint"] = 193356,}
    local HasBuff = { ["attackspeed"] = false, ["shadowstrike"] = false, ["cooldown"] = false, ["pistolcrit"] = false, ["energy"] = false, ["combopoint"] = false,}
    local iBuffCount = 0
    local buffDurations, i = { }, 1
    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff("player", i)
    while exist do
        buffDurations[buffID] = duration
        i = i + 1
        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff("player", i)
    end
    for name, id in pairs(rogueBuffID) do
        --DEFAULT_CHAT_FRAME:AddMessage("test" .. id)
        if buffDurations[id] and buffDurations[id] >= 4 then
            HasBuff[name] = true
            iBuffCount = iBuffCount + 1
        end
    end
    --没Buff
    if iBuffCount == 0 then
        return true
    end
    --垃圾Buff
    if iBuffCount == 1 then
        if HasBuff["attackspeed"] or HasBuff["energy"] then
            return true
        end
    end
    
    return false
end


function CanHeadShot()
    local iComboPoint = GetComboPoint("player","target");
    --连击点4个以上
    if iComboPoint < 4 then
        return false
    end
    --正中眉心是否可用
    local canUse = IsUsableSpell(315341)
    if not canUse then
        return false
    end
    return true
end
--- Outlaw End---

