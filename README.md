# Headshot System Addon

This addon introduces a **Headshot System** that allows for instant death by headshots on both players and NPCs. Additionally, you can configure whether armor can save the player from a lethal headshot.

## Configuration

The addon can be fully customized by adding the following ConVars to your server's `garrysmod/cfg/server.cfg` file:

- **Enable headshots for NPCs**  
  Controls whether NPCs can be killed by headshots.  
  `1 = enabled, 0 = disabled`  
  ```lua
  npc_headshot_mode 1
  ```

- **NPC headshot kill chance**  
  The chance (0-100) for NPCs to die from a headshot.  
  ```lua
  npc_headshot_chance 100
  ```

- **Enable headshots for players**  
  Controls whether players can be killed by headshots.  
  `1 = enabled, 0 = disabled`  
  ```lua
  player_headshot_mode 1
  ```

- **Armor saves from headshot**  
  Determines if armor can prevent death from a headshot.  
  `1 = enabled, 0 = disabled`  
  ```lua
  player_armor_save_live 1
  ```

- **Armor penetration**  
  Adds a 50/50 chance to pierce armor if the headshot damage exceeds the player's armor.  
  `1 = enabled, 0 = disabled`  
  ```lua
  player_armor_penetration 1
  ```

- **Armor damage multiplier**  
  Specifies the damage multiplier to armor when hit in the head.  
  Accepts any positive number.  
  ```lua
  player_headshot_armor_dmg_multiplier 3
  ```

**All of the above ConVars have default values.**

---

Uploaded with [gmpublisher](https://github.com/WilliamVenner/gmpublisher)

---

This format should be clean and structured for GitHub, making it easier to understand and navigate for users.
