---
--- Created by Hazardooo.
--- DateTime: 22.09.2024
---

-- NPC config
npcHeadshotMode = CreateConVar("npc_headshot_mode", "1", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "Enables headshot by NPC or not. 1 = enabled, 0 = disabled")
npcHeadshotChance = CreateConVar("npc_headshot_chance", "100", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "The chance of killing an NPC in the head. The range of the number is specified 0-100")

-- Player config
playerHeadshotMode = CreateConVar("player_headshot_mode", "1", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "Enables headshot for players. 1 = enabled, 0 = disabled")
playerArmorSaveLive = CreateConVar("player_armor_save_live", "1", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "Does the armor save you from headshot. 1 = enabled, 0 = disabled")
PlayerArmorPenetration = CreateConVar("player_armor_penetration", "1", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "Includes a chance to pierce armor to death with a headshot if the damage done to the head was greater than the player's armor. The chance is 50/50. 1 = enabled, 0 = disabled")
playerHeadshotArmorDMGMultiplier = CreateConVar("player_headshot_armor_dmg_multiplier", "3", { FCVAR_NOTIFY, FCVAR_SERVER_CAN_EXECUTE }, "Armor damage multiplier when hit in the head. The range of the number is specified. Any positive number is a number")
