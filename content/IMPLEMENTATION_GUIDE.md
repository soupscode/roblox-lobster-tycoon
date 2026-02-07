# 🛠️ IMPLEMENTATION GUIDE FOR DEVELOPERS 🛠️

## Quick reference for implementing Lobster Tycoon content in Roblox

---

## 🦞 LOBSTER SPECIES IMPLEMENTATION

### Data Structure Example (Lua)

```lua
local LobsterSpecies = {
    ["BasicBob"] = {
        name = "Basic Bob",
        rarity = "Common",
        spawnRate = 0.95,  -- 95% chance
        value = 10,
        description = "Just a regular lobster living his best life...",
        specialTrait = nil,
        model = "rbxassetid://[MODEL_ID]",
        color = Color3.fromRGB(205, 92, 92)
    },
    
    ["BusinesslobsterJones"] = {
        name = "Businesslobster Jones",
        rarity = "Uncommon",
        spawnRate = 0.45,  -- 45% chance
        value = 150,
        description = "Wears a tiny tie. Has opinions about cryptocurrency...",
        specialTrait = {
            type = "PassiveIncome",
            multiplier = 1.05,  -- +5% passive income
            message = "*Explains crypto unprompted*"
        },
        model = "rbxassetid://[MODEL_ID]",
        accessories = {"TinyTie", "Glasses"}
    },
    
    ["GodEmperorLobster"] = {
        name = "God Emperor Lobster the Eternal",
        rarity = "Legendary",
        spawnRate = 0.005,  -- 0.5% chance
        value = 100000,
        description = "Rules all lobsters with an iron claw...",
        specialTrait = {
            type = "GlobalMultiplier",
            multiplier = 3.0,  -- 3x production for all lobsters
            tributeCost = 1000,  -- Daily tribute requirement
            message = "*Demands tribute*"
        },
        model = "rbxassetid://[MODEL_ID]",
        accessories = {"Crown", "Robe"},
        particles = "GoldenAura"
    }
}
```

### Spawn Rate Logic

```lua
function SpawnRandomLobster()
    local rand = math.random()
    local cumulativeChance = 0
    
    -- Sort by rarity (legendary first for proper cumulative chance)
    local sortedLobsters = SortByRarity(LobsterSpecies)
    
    for _, lobster in ipairs(sortedLobsters) do
        cumulativeChance += lobster.spawnRate
        if rand <= cumulativeChance then
            return CreateLobster(lobster)
        end
    end
    
    -- Fallback to Basic Bob
    return CreateLobster(LobsterSpecies["BasicBob"])
end
```

### Special Trait System

```lua
local TraitHandlers = {
    PassiveIncome = function(lobster, baseIncome)
        return baseIncome * lobster.specialTrait.multiplier
    end,
    
    GlobalMultiplier = function(lobster, tycoon)
        -- Apply to all lobsters in tycoon
        for _, otherLobster in pairs(tycoon.lobsters) do
            otherLobster.productionRate *= lobster.specialTrait.multiplier
        end
    end,
    
    Teleportation = function(lobster)
        -- Corrupted Lobster.exe random teleport
        if math.random() < 0.1 then  -- 10% chance per tick
            lobster.Position = GetRandomPosition()
        end
    end
}
```

---

## 💬 DIALOGUE SYSTEM IMPLEMENTATION

### Dialogue Manager

```lua
local CrustyCarlDialogue = {
    greetings = {
        "Oh great, another landlubber with a 'vision.'...",
        "Welcome to Crusty Carl's, where your dreams come to die...",
        -- ... more greetings
    },
    
    browsing = {
        "You've been looking at the same lobster for five minutes...",
        "Touch it you buy it...",
        -- ... more browsing lines
    },
    
    purchases = {
        common = {
            "One Basic Bob, coming right up...",
            "Another red one? Original...",
        },
        rare = {
            "Ooh, Businesslobster Jones!...",
            "Lobster With Gun... yeah...",
        },
        legendary = {
            "THE COSMIC HORROR LOBSTER?! Are you INSANE?!...",
            "God Emperor Lobster... you know it demands tribute...",
        }
    },
    
    lowFunds = {
        "Your wallet's lighter than a sea cucumber...",
        "Look at you, pointing at things you can't afford...",
    }
}

function GetDialogue(category, context)
    local pool = CrustyCarlDialogue[category]
    
    -- Context-specific dialogue (e.g., purchase tier)
    if context then
        pool = pool[context] or pool
    end
    
    -- Random selection with cooldown to avoid repeats
    local lastDialogue = playerData.lastCarlDialogue or ""
    local options = {}
    
    for _, line in ipairs(pool) do
        if line ~= lastDialogue then
            table.insert(options, line)
        end
    end
    
    local selected = options[math.random(#options)]
    playerData.lastCarlDialogue = selected
    
    return selected
end
```

### Shop Interaction

```lua
function OnShopEnter(player)
    local greeting = GetDialogue("greetings")
    ShowDialogue(player, "Crusty Carl", greeting)
    
    -- Idle bark system
    wait(5)
    if player:IsInShop() then
        local browsing = GetDialogue("browsing")
        ShowDialogue(player, "Crusty Carl", browsing)
    end
end

function OnPurchase(player, lobster)
    local tier = lobster.rarity:lower()
    local response = GetDialogue("purchases", tier)
    ShowDialogue(player, "Crusty Carl", response)
end

function OnInsufficientFunds(player, lobster)
    local roast = GetDialogue("lowFunds")
    ShowDialogue(player, "Crusty Carl", roast)
end
```

---

## 🏆 ACHIEVEMENT SYSTEM

### Achievement Data Structure

```lua
local Achievements = {
    ["BabysFirstLobster"] = {
        name = "Baby's First Lobster",
        description = "Acquire your first lobster",
        icon = "rbxassetid://[ICON_ID]",
        condition = {
            type = "LobsterCount",
            target = 1
        },
        reward = {
            lobsterBucks = 100
        },
        hidden = false
    },
    
    ["ShinyHunter"] = {
        name = "SHINY HUNTER",
        description = "Obtain the Shiny Lobster (But Like, REALLY Shiny)",
        icon = "rbxassetid://[ICON_ID]",
        condition = {
            type = "OwnSpecificLobster",
            target = "ShinyLobster"
        },
        reward = {
            lobsterBucks = 100000,
            cosmetic = "Sunglasses",
            title = "Shiny Hunter"
        },
        hidden = false,
        rarity = "Mythical"
    },
    
    ["TheForbiddenOne"] = {
        name = "What Have I Done",
        description = "Unlock the Forbidden Lobster",
        icon = "rbxassetid://[ICON_ID]",
        condition = {
            type = "OwnSpecificLobster",
            target = "ForbiddenLobster"
        },
        reward = {
            sanity = -100,  -- Cosmetic stat
            special = "UnlockSecretContent"
        },
        hidden = true  -- Don't show until unlocked
    }
}
```

### Achievement Checker

```lua
function CheckAchievements(player)
    for id, achievement in pairs(Achievements) do
        if not player.achievements[id] then  -- Not yet unlocked
            if EvaluateCondition(player, achievement.condition) then
                UnlockAchievement(player, id)
            end
        end
    end
end

function EvaluateCondition(player, condition)
    if condition.type == "LobsterCount" then
        return #player.lobsters >= condition.target
    elseif condition.type == "OwnSpecificLobster" then
        return player:HasLobster(condition.target)
    elseif condition.type == "TotalEarnings" then
        return player.stats.totalEarned >= condition.target
    -- ... more condition types
    end
end

function UnlockAchievement(player, id)
    local achievement = Achievements[id]
    player.achievements[id] = true
    
    -- Show notification
    ShowAchievementPopup(player, achievement)
    
    -- Grant rewards
    if achievement.reward.lobsterBucks then
        player.currency += achievement.reward.lobsterBucks
    end
    if achievement.reward.title then
        player:UnlockTitle(achievement.reward.title)
    end
    -- ... more reward types
end
```

---

## 💡 LOADING TIP SYSTEM

### Tip Manager

```lua
local LoadingTips = {
    helpful = {
        weight = 50,  -- 50% of tips should be helpful
        tips = {
            "Upgrade your production buildings early...",
            "Rare lobsters generate more passive income...",
            -- ... more helpful tips
        }
    },
    
    funny = {
        weight = 30,  -- 30% funny
        tips = {
            "Crabs are just lobsters who gave up on their dreams...",
            "The ocean is just sky water. Think about it...",
            -- ... more funny tips
        }
    },
    
    concerning = {
        weight = 15,  -- 15% concerning
        tips = {
            "The lobsters can sense fear...",
            "If you hear whispering, that's normal...",
            -- ... more concerning tips
        }
    },
    
    secret = {
        weight = 5,  -- 5% secret/rare
        tips = {
            "The developer's favorite lobster is Goth Lobster...",
            "There's a secret room behind Crusty Carl's shop...",
            -- ... more secret tips
        }
    }
}

function GetLoadingTip()
    -- Weighted random selection
    local totalWeight = 0
    for _, category in pairs(LoadingTips) do
        totalWeight += category.weight
    end
    
    local rand = math.random() * totalWeight
    local cumulative = 0
    
    for _, category in pairs(LoadingTips) do
        cumulative += category.weight
        if rand <= cumulative then
            return category.tips[math.random(#category.tips)]
        end
    end
end

function ShowLoadingScreen(player)
    local tip = GetLoadingTip()
    player.gui.LoadingTip.Text = tip
end
```

---

## 🎨 UI/UX RECOMMENDATIONS

### Color Palette
- **Common:** Gray (#808080)
- **Uncommon:** Green (#2ECC71)
- **Rare:** Blue (#3498DB)
- **Epic:** Purple (#9B59B6)
- **Legendary:** Gold (#F39C12)
- **Mythical:** Rainbow/Holographic effect

### Font Suggestions
- **Headers:** Bold, comic-style (e.g., "Bangers", "Fredoka One")
- **Body:** Clean, readable (e.g., "Montserrat", "Poppins")
- **Dialogue:** Handwritten-style for Carl (e.g., "Patrick Hand")

### Sound Effects Ideas
- Lobster clicks/clacks for UI interactions
- Cash register "cha-ching" for purchases
- Dramatic sting for Legendary spawns
- Comedic horn for Basic Bob spawns
- Ominous whispers for Forbidden Lobster

---

## 📱 MOBILE OPTIMIZATION

### Text Adjustments
- Shorten achievement descriptions for mobile
- Use abbreviated currency (10k instead of 10,000)
- Scale dialogue text based on screen size

### Touch Controls
- Larger hitboxes for lobster selection
- Swipe gestures for menu navigation
- Tap-and-hold for detailed info

---

## 🔧 PERFORMANCE TIPS

### Lobster Limits
- Cap active lobsters per player (suggest 100-200)
- Use object pooling for lobster instances
- LOD (Level of Detail) for distant lobsters
- Despawn idle lobsters outside view range

### Dialogue Optimization
- Preload dialogue strings on join
- Cache last 10 dialogues per player
- Use string interpolation for dynamic text

### Achievement Tracking
- Batch-check achievements (every 5-10 seconds, not every frame)
- Use increment-based tracking (add to counter, don't recount each time)
- Store achievement data in DataStore efficiently

---

## 🐛 COMMON IMPLEMENTATION PITFALLS

### ❌ DON'T:
1. **Check spawn rates sequentially** - Use cumulative probability
2. **Recount lobsters every frame** - Use event-driven counters
3. **Store full dialogue in player data** - Store IDs/references only
4. **Show same tip twice in a row** - Implement cooldown/history
5. **Make all traits stack multiplicatively** - Cap or use diminishing returns

### ✅ DO:
1. **Use enums for rarities** - Makes balancing easier
2. **Implement retry logic** - For DataStore failures
3. **Add debug commands** - For testing rare spawns
4. **Log achievement unlocks** - For analytics
5. **Playtest economy balance** - Numbers may need tweaking

---

## 📊 SUGGESTED BALANCING

### Spawn Rates (Can adjust based on playtesting)
- Common: 85-95%
- Uncommon: 35-50%
- Rare: 8-20%
- Epic: 3-6%
- Legendary: 0.5-1%
- Mythical: 0.01-0.1%

### Economy Multipliers
- Common lobsters: 1x base income
- Uncommon: 2-3x
- Rare: 5-10x
- Epic: 20-50x
- Legendary: 100-500x
- Mythical: 1000x+

### Building Costs
- Start small (100-500 LobsterBucks)
- Exponential scaling for upgrades
- Endgame buildings: 1M+ LobsterBucks

---

## 🎯 LAUNCH CHECKLIST

- [ ] All 18 lobster species implemented with models
- [ ] Crusty Carl shop functional with dialogue
- [ ] Achievement system tracking 45+ achievements
- [ ] Loading tips rotating properly
- [ ] Store page description published
- [ ] Basic tycoon mechanics working
- [ ] DataStore saving/loading tested
- [ ] Mobile controls optimized
- [ ] Performance tested with 50+ players
- [ ] Community Discord/social links active

---

## 📞 SUPPORT

If you need clarification on any content:
- Check README.md for lore reference
- Reference individual content files for exact text
- Adjust numbers for game balance as needed
- Don't be afraid to modify for your vision!

---

**🦞 Good luck with development! May RNGesus bless your spawns! 🦞**
