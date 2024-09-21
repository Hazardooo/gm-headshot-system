---
--- Created by Hazardooo.
--- DateTime: 22.09.2024
---
include("autorun/server/headshot_system_config.lua")

local npcBlackList = {
    ["npc_strider"] = true,
    ["npc_nihilanth"] = true,
    ["npc_hunter"] = true,
    ["npc_bullseye"] = true,
    ["npc_antlion_worker"] = true,
    ["npc_antlionguardian"] = true,
    ["npc_gargantua"] = true,
    ["npc_clawscanner"] = true,
    ["monster_alien_controller"] = true,
    ["monster_bigmomma"] = true,
    ["monster_tentacle"] = true,
    ["monster_gargantua"] = true
}

hook.Add("ScaleNPCDamage", "NpcHeadShotMode", function(npc, hitgroup, dmginfo)
    if not npcHeadshotMode:GetBool() then
        return
    end

    if hitgroup == HITGROUP_HEAD and not npcBlackList[npc:GetClass()] then
        if math.random(100) <= npcHeadshotChance:GetInt() then
            npc:SetHealth(0)
            npc:TakeDamageInfo(dmginfo)
        end
    end
end)
