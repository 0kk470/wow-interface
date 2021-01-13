--2021.1.11  Created by kk --



REQUIRE_HELP_CHECK_INTERVAL = 10

LAST_HELP_CHECK_TIME = 0

function ShouldCheck()
    local NowTime = GetTime()
    if LAST_HELP_CHECK_TIME == 0 or NowTime - LAST_HELP_CHECK_TIME > REQUIRE_HELP_CHECK_INTERVAL then
        LAST_HELP_CHECK_TIME = NowTime
        return true
    end
    return false
end

function HelpTimeProgress()
    local NowTime = GetTime()
    return math.ceil(LAST_HELP_CHECK_TIME + REQUIRE_HELP_CHECK_INTERVAL - NowTime)
end

function IsRequiringHelp()
    local allyCount = 0
    local enemyCount = 0
    local maxUnitCount = 40
    for i = 1, maxUnitCount do
        local unit = "nameplate"..i
        if not UnitIsDead(unit) and UnitIsPlayer(unit) and WeakAuras.CheckRange(unit, 40, "<=") then
            if UnitIsEnemy(unit, "player") then
                enemyCount = enemyCount + 1
            elseif UnitIsFriend(unit, "player") then
                allyCount = allyCount + 1
            end
        end
    end
    DEFAULT_CHAT_FRAME:AddMessage("enemyCount: " .. enemyCount .. ", allyCount: " .. allyCount)
    return allyCount <= enemyCount, allyCount, enemyCount
end

function SendBattleHelpMessage(allyCount, enemyCount)
    local myName = UnitName("player")
    local zoneName = GetMinimapZoneText()
    local myhp = UnitHealth("player")
    local myhpMax = UnitHealthMax("player")
    local HealthPercent = ( UnitHealth("player")/UnitHealthMax("player")) * 100
    local msg = string.format("提示:【%s】正在交战，当前生命值%.1f%% || 所在区域:【%s】|| 【友方玩家数量:%d, 敌方玩家数量:%d",myName, HealthPercent, zoneName, allyCount, enemyCount)
    --DEFAULT_CHAT_FRAME:AddMessage(msg)
    SendChatMessage(msg , "BATTLEGROUND"); 
end

local bNeedHelp, allyCount, enemyCount = IsRequiringHelp()
if bNeedHelp then
    SendBattleHelpMessage(allyCount, enemyCount)
end