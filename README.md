# Lobster Tycoon - Roblox Game Scripts

A complete Lua script foundation for a Roblox tycoon game featuring lobster spawning, breeding, and collection mechanics.

## 📁 Project Structure

```
roblox-lobster-tycoon/
└── src/
    ├── LobsterManager.lua    # Lobster spawning, breeding, rarity system
    ├── TycoonCore.lua        # Money, upgrades, droppers, collectors
    └── DataStore.lua         # Player data persistence
```

## 🦞 Features

### LobsterManager.lua
- **Rarity System**: 5 tiers (Common → Legendary) with weighted spawning
- **Breeding Mechanics**: Combine lobsters with chance for rarer offspring
- **Auto-Spawner**: Configurable spawn intervals
- **Value System**: Rarer lobsters = higher cash value
- **Modular Design**: Easy to customize rarities and spawn rates

### TycoonCore.lua
- **Money System**: Earning, spending, and UI display
- **Upgrade System**: Speed boost, value multiplier, auto-collector
- **Dropper Pattern**: Automated item spawning with speed scaling
- **Collector Pattern**: Touch-based collection + auto-collection upgrade
- **Visual Feedback**: Collection effects and UI updates

### DataStore.lua
- **Data Persistence**: Save/load player progress
- **Retry Logic**: Automatic retry on save/load failures
- **Auto-Save**: Periodic saves every 5 minutes
- **Backup System**: Optional data backup on player leave
- **Graceful Shutdown**: Saves all data when server closes
- **Cache System**: Fast data access during gameplay

## 🚀 Installation

### In Roblox Studio:

1. **Create the folder structure:**
   - In ServerScriptService, create a folder called `LobsterTycoon`
   
2. **Add the scripts:**
   - Create ModuleScripts named `LobsterManager`, `TycoonCore`, and `DataStore`
   - Copy the code from `src/` into each respective ModuleScript

3. **Create a main server script:**

```lua
-- ServerScriptService/LobsterTycoon/MainServer

local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")

local TycoonCore = require(script.Parent.TycoonCore)
local LobsterManager = require(script.Parent.LobsterManager)
local DataStore = require(script.Parent.DataStore)

-- Initialize DataStore system
DataStore:Initialize()

-- Track active tycoons
local PlayerTycoons = {}

-- Assign tycoon to player
Players.PlayerAdded:Connect(function(player)
	-- Find available tycoon model (you need to create these in workspace)
	local tycoonModel = workspace.Tycoons:FindFirstChild("Tycoon1") -- Customize this
	
	if tycoonModel then
		-- Create tycoon instance
		local tycoon = TycoonCore.new(player, tycoonModel)
		tycoon:LoadData()
		
		-- Create lobster manager
		local lobsterMgr = LobsterManager.new(player, tycoonModel)
		lobsterMgr:StartAutoSpawner(10) -- Spawn every 10 seconds
		
		-- Store references
		PlayerTycoons[player.UserId] = {
			Tycoon = tycoon,
			LobsterManager = lobsterMgr
		}
	end
end)

-- Cleanup on player leave
Players.PlayerRemoving:Connect(function(player)
	local data = PlayerTycoons[player.UserId]
	
	if data then
		data.Tycoon:Cleanup()
		data.LobsterManager:Cleanup()
		PlayerTycoons[player.UserId] = nil
	end
end)
```

4. **Create the workspace structure:**
   - Create a folder in Workspace called `Tycoons`
   - Create a Model called `Tycoon1` with:
     - A part named `LobsterSpawn` (where lobsters appear)
     - A folder named `Droppers` with parts (item spawners)
     - A folder named `Collectors` with parts (item collection zones)

## ⚙️ Configuration

### Rarity Rates (LobsterManager.lua)
```lua
Rarities = {
    Common = { SpawnChance = 0.60 },      -- 60%
    Uncommon = { SpawnChance = 0.25 },    -- 25%
    Rare = { SpawnChance = 0.10 },        -- 10%
    Epic = { SpawnChance = 0.04 },        -- 4%
    Legendary = { SpawnChance = 0.01 }    -- 1%
}
```

### Upgrade Costs (TycoonCore.lua)
```lua
Upgrades = {
    SpeedBoost = { BaseCost = 500, Multiplier = 1.5 },
    ValueBoost = { BaseCost = 1000, Multiplier = 1.8 },
    AutoCollector = { BaseCost = 2500, Multiplier = 2.0 }
}
```

### DataStore Name (DataStore.lua)
```lua
local DATA_STORE_NAME = "LobsterTycoonData_v1"
-- Change version number to reset all player data
```

## 🎮 Usage Examples

### Spawn a Legendary Lobster
```lua
local lobsterMgr = LobsterManager.new(player, tycoonModel)
lobsterMgr:SpawnLobster("Legendary")
```

### Purchase an Upgrade
```lua
local tycoon = TycoonCore.new(player, tycoonModel)
local success, message = tycoon:PurchaseUpgrade("SpeedBoost")
print(message)
```

### Manual Save
```lua
DataStore:SavePlayerData(player, data)
```

## 📊 Data Structure

Player data saved to DataStore:
```lua
{
    Cash = 100,
    Upgrades = {
        SpeedBoost = 0,
        ValueBoost = 0,
        AutoCollector = 0
    },
    TotalLobstersSpawned = 0,
    LastPlayed = 1234567890,
    PlaytimeSeconds = 0
}
```

## 🔧 Customization

- **Replace placeholder meshes**: Update `MeshId` in LobsterManager.lua with your lobster models
- **Add more upgrades**: Extend the `TYCOON_CONFIG.Upgrades` table
- **Custom breeding logic**: Modify `BreedLobsters()` function
- **Different rarity tiers**: Add/remove from `LOBSTER_CONFIG.Rarities`

## ⚠️ Important Notes

1. **Enable Studio Access to API Services**: File → Game Settings → Security → Enable Studio Access
2. **Test in published game**: DataStore only works in published games (not solo Studio testing)
3. **Mesh IDs**: Replace placeholder mesh IDs with your actual lobster models
4. **Tycoon Setup**: You must create the physical tycoon models in Workspace

## 📝 Best Practices

- Use the provided auto-save system (saves every 5 minutes)
- Always check `success` return values when calling purchase functions
- Test breeding times in Studio before publishing
- Monitor DataStore budget (60 + numPlayers × 10 requests per minute)

## 🐛 Troubleshooting

**Data not saving:**
- Check Studio Access to API Services is enabled
- Verify game is published
- Check Output for DataStore error messages

**Lobsters not spawning:**
- Ensure `LobsterSpawn` part exists in tycoon model
- Check that auto-spawner is started

**Items not collecting:**
- Verify `Owner` value matches player
- Check collector parts are properly positioned

---

**Created by OpenClaw AI**  
Ready for Roblox Studio implementation!
