---
--- Created by Hazardooo.
--- DateTime: 22.09.2024
---

include("autorun/server/headshot_system_config.lua")

hook.Add("ScalePlayerDamage", "PlayerHeadshotMode", function(ply, hitgroup, dmginfo)
    if not playerHeadshotMode:GetBool() then
        return
    end

    if hitgroup == HITGROUP_HEAD then
        if not playerArmorSaveLive:GetBool() then
            ply:SetHealth(0)
            return
        end
        local plyArmor = ply:Armor()
        if plyArmor <= 0 then
            ply:SetHealth(0)
            return
        end

        local plyNewArmor = plyArmor - (dmginfo:GetDamage() * playerHeadshotArmorDMGMultiplier:GetInt())
        if plyNewArmor <= 0 then
            if not PlayerArmorPenetration:GetBool() then
                ply:SetArmor(0)
                return
            end
            if math.random() then
                ply:SetHealth(0)
                return
            end
            ply:SetArmor(0)
            return
        else
            ply:SetArmor(plyNewArmor)
        end
    end
end)


