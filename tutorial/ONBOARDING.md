# 🦞 Lobster Tycoon - New Player Onboarding Design

> *"From zero to hero, one pinchy boi at a time"*

---

## Table of Contents
1. [First-Time User Experience (FTUE)](#1-first-time-user-experience-ftue)
2. [Tutorial UI System](#2-tutorial-ui-system)
3. [Onboarding Rewards](#3-onboarding-rewards)
4. [Help System](#4-help-system)
5. [Retention Hooks](#5-retention-hooks)

---

## 1. First-Time User Experience (FTUE)

### 1.1 Tutorial Flow Overview

**Total Duration:** 4-5 minutes  
**Philosophy:** "Learn by doing, laugh while doing it"

```
┌─────────────────────────────────────────────────────────────┐
│  FTUE FLOW TIMELINE                                         │
├─────────────────────────────────────────────────────────────┤
│  0:00 ──► Spawn & Meet Captain Clawsworth                   │
│  0:30 ──► Claim First Lobster Trap                          │
│  1:00 ──► Place Trap in Water                               │
│  1:30 ──► Wait/Collect First Lobster (accelerated)          │
│  2:00 ──► Sell Lobster at Market                            │
│  2:30 ──► Buy Second Trap (first purchase)                  │
│  3:00 ──► Discover Upgrade Button                           │
│  3:30 ──► Quick Rebirth Teaser (see high-level player)      │
│  4:00 ──► Tutorial Complete - Free Roam Begins              │
└─────────────────────────────────────────────────────────────┘
```

### 1.2 Detailed Step-by-Step Breakdown

#### **Step 1: The Grand Arrival (0:00 - 0:30)**

**Scene:** Player spawns on a rickety wooden dock. A weathered lobster boat bobs nearby. Standing at the end of the dock is **Captain Clawsworth** — a grizzled old fisherman NPC with a lobster claw for a hand.

**Trigger:** Automatic on first join

**Player Action:** Walk toward the glowing NPC marker

---

#### **Step 2: Claim Your Destiny (0:30 - 1:00)**

**Trigger:** Player reaches Captain Clawsworth

**UI:** Gift box appears above Clawsworth with "FREE" sparkles

**Player Action:** Click to receive Starter Trap

**Reward Given:**
- 1x Basic Wooden Trap
- 50 Shells (starter currency)

---

#### **Step 3: Into the Deep (1:00 - 1:30)**

**Trigger:** Player receives trap

**UI:** 
- Trap appears in hotbar (slot 1)
- Giant arrow points to nearby "TRAP ZONE" in water
- Blue highlight ring pulses on valid placement area

**Player Action:** Walk to water, click to place trap

**Haptic Feedback:** Satisfying "SPLASH" sound + ripple effect

---

#### **Step 4: The Waiting Game... NOT! (1:30 - 2:00)**

**Trigger:** Trap placed

**Mechanic:** Tutorial trap has 10-second timer (normal is 60s)

**UI:** 
- Timer appears above trap
- "First Catch Bonus: 3x Lobsters!" banner

**Player Action:** Wait, then click trap when ready indicator appears

**Reward:** 3 Common Lobsters

---

#### **Step 5: Show Me the Money (2:00 - 2:30)**

**Trigger:** Player has lobsters in inventory

**UI:** Arrow points to LOBSTER MARKET building

**Player Action:** 
1. Walk to market
2. Interact with Selling Booth
3. Sell lobsters

**Reward:** ~75 Shells (enough for next trap)

---

#### **Step 6: The Capitalism Begins (2:30 - 3:00)**

**Trigger:** First sale complete

**UI:** Arrow points to TRAP SHOP

**Player Action:** Buy "Improved Trap" for 60 Shells

**Teaching Moment:** Player now understands core loop: Trap → Catch → Sell → Upgrade

---

#### **Step 7: Upgrades, Baby! (3:00 - 3:30)**

**Trigger:** Second trap purchased

**UI:** Highlight on UPGRADE button (bottom of screen)

**Player Action:** Open upgrade menu, apply free upgrade point

**Free Upgrade:** +10% Catch Speed (feels impactful immediately)

---

#### **Step 8: The Whale Sighting (3:30 - 4:00)**

**Trigger:** After first upgrade

**Event:** A high-level player's boat zooms by with golden traps and a legendary lobster on deck

**UI:** 
- "Wow! That player has REBIRTHED 5 times!"
- "Keep playing to unlock amazing rewards!"

**Purpose:** Aspiration hook — show the endgame

---

#### **Step 9: Freedom! (4:00+)**

**Trigger:** Tutorial complete

**UI:**
- Confetti explosion
- "TUTORIAL COMPLETE!" banner
- Reward chest appears

**Player Status:** Free roam enabled, all features unlocked

---

### 1.3 NPC Dialogue: Captain Clawsworth

> **Design Note:** Captain Clawsworth lost his hand to a legendary lobster named "Big Red" — this is his origin story and running joke.

#### **First Meeting**
```
CLAWSWORTH: "Ahoy there, landlubber! Welcome to Lobster Bay!"

CLAWSWORTH: "Name's Captain Clawsworth. Yes, the claw is real. 
             No, I don't want to talk about it."

CLAWSWORTH: "...Okay fine, a lobster did this. His name was Big Red. 
             He's still out there. *stares dramatically at ocean*"

CLAWSWORTH: "ANYWAY! You're here to become a Lobster Tycoon, right? 
             Let's start with the basics!"
```

#### **Giving First Trap**
```
CLAWSWORTH: "Here's your first trap! I made it myself. 
             From driftwood. And dreams. Mostly driftwood."

CLAWSWORTH: "She ain't pretty, but she'll catch lobsters! 
             Probably. I'm like 60% sure."

CLAWSWORTH: "Now take this trap and drop it in the water! 
             The blue glowy area! Not the regular water — 
             that's where Big Red lives..."
```

#### **After First Placement**
```
CLAWSWORTH: "Perfect! Now we wait..."

CLAWSWORTH: "..."

CLAWSWORTH: "Fishing is 90% waiting and 10% EXTREME LOBSTER ACTION!"

CLAWSWORTH: "Good news — for YOUR first catch, I bribed the lobsters 
             to show up faster. Don't ask how. Don't ask with what."
```

#### **First Catch**
```
CLAWSWORTH: "LOBSTERS! Beautiful, pinchy, delicious lobsters!"

CLAWSWORTH: "Now take those bad boys to the market! 
             Sell 'em before they start asking questions!"

CLAWSWORTH: "...Lobsters can't talk. Probably. 
             Big Red definitely could. *shudders*"
```

#### **First Sale**
```
CLAWSWORTH: "CHA-CHING! You're officially in the lobster business!"

CLAWSWORTH: "Now you've got Shells — that's money around here. 
             Very creative name, I know."

CLAWSWORTH: "Head to the Trap Shop and buy yourself something nice! 
             And by nice, I mean another trap. Always more traps."
```

#### **First Upgrade**
```
CLAWSWORTH: "Upgrades! The secret sauce! The special spice! 
             The... third food metaphor!"

CLAWSWORTH: "Spend these points to make your empire GROW! 
             Faster traps! Rarer lobsters! Shinier boats!"

CLAWSWORTH: "One day, you might even be strong enough to face... 
             *lightning flash* ...BIG RED."

CLAWSWORTH: "But that's a story for another day. 
             Now GO! CATCH! PROFIT!"
```

#### **Tutorial Complete**
```
CLAWSWORTH: "You did it! You're officially a Lobster Tycoon... in training!"

CLAWSWORTH: "Remember: Traps catch lobsters. Lobsters make money. 
             Money makes dreams. Dreams catch bigger lobsters."

CLAWSWORTH: "...I've been at sea too long."

CLAWSWORTH: "Come back tomorrow for your Daily Login Bonus! 
             And watch out for Big Red. He remembers faces. 
             And hands. *waves claw sadly*"
```

---

### 1.4 Hand-Holding vs. Discovery Balance

| Element | Approach | Reasoning |
|---------|----------|-----------|
| **Core Loop** (Trap→Catch→Sell) | Full hand-holding | Essential for retention; must be crystal clear |
| **Basic Upgrades** | Guided with highlights | Important but simple enough to grasp quickly |
| **Rebirth System** | Teaser only (whale sighting) | Discovery creates curiosity and long-term goals |
| **Rare Lobsters** | Pure discovery | Surprise moments create shareability |
| **Secret Areas** | No hints | Exploration rewards dedicated players |
| **Pets/Companions** | Light tooltip only | Mid-game content; let players find it naturally |
| **Trading System** | Help menu only | Social features work better through organic discovery |
| **Big Red Boss** | Zero guidance | Legendary discovery moment for late-game players |

**Core Philosophy:**
```
├── Minutes 0-5: Hold their hand tight (core loop)
├── Minutes 5-30: Light guidance (breadcrumbs)
├── Hours 1-5: Tooltips on hover only
└── Hours 5+: They're on their own (they're ready!)
```

---

## 2. Tutorial UI System

### 2.1 Highlight/Arrow System Specs

#### **Arrow Component**
```lua
ArrowHighlight = {
    Style = "Bouncing",           -- Arrow bobs up and down
    Color = Color3.fromRGB(255, 215, 0),  -- Gold
    Size = Vector2.new(80, 80),
    BounceHeight = 15,            -- Pixels
    BounceSpeed = 2,              -- Cycles per second
    GlowEnabled = true,
    GlowIntensity = 0.6,
    RotationEnabled = true,       -- Points at target
    ZIndex = 999                  -- Always on top
}
```

#### **Highlight Ring Component**
```lua
HighlightRing = {
    Style = "Pulse",
    Color = Color3.fromRGB(0, 200, 255),  -- Cyan
    InnerRadius = 50,
    OuterRadius = 80,
    PulseSpeed = 1.5,             -- Cycles per second
    Transparency = {0.3, 0.7},    -- Min, Max during pulse
    ParticleEmitter = true,       -- Sparkles around edge
    Shape = "Circle"              -- or "Rectangle" for UI elements
}
```

#### **Dim Overlay Component**
```lua
TutorialOverlay = {
    Enabled = true,
    DimColor = Color3.fromRGB(0, 0, 0),
    DimTransparency = 0.6,
    CutoutPadding = 20,           -- Pixels around highlighted element
    CutoutCornerRadius = 12,
    FocusedElementZIndex = 1000
}
```

#### **Visual Hierarchy**
```
┌────────────────────────────────────────┐
│          DIM OVERLAY (z: 998)          │
│    ┌─────────────────────────────┐     │
│    │   CUTOUT WINDOW (clear)     │     │
│    │  ┌───────────────────────┐  │     │
│    │  │ HIGHLIGHT RING (z:999)│  │     │
│    │  │  ┌─────────────────┐  │  │     │
│    │  │  │ TARGET ELEMENT  │  │  │     │
│    │  │  └─────────────────┘  │  │     │
│    │  └───────────────────────┘  │     │
│    └─────────────────────────────┘     │
│              ↓ ARROW (z: 1000)         │
└────────────────────────────────────────┘
```

---

### 2.2 Tooltip Content for Every Major Feature

#### **Main HUD Elements**

| Element | Tooltip Title | Tooltip Body |
|---------|---------------|--------------|
| **Shell Counter** | "Shells 🐚" | "Your main currency! Sell lobsters to earn more. Spend at shops!" |
| **Pearl Counter** | "Pearls 💎" | "Premium currency. Earn from achievements or the shop!" |
| **Trap Counter** | "Active Traps" | "Traps in water: {X}/{MAX}. Buy more trap slots to expand!" |
| **Level Bar** | "Tycoon Level" | "Catch lobsters to gain XP! Level up for rewards and unlocks!" |
| **Rebirth Button** | "🔄 Rebirth" | "Reset progress for PERMANENT bonuses! Unlocks at Level 50." |

#### **Buildings**

| Building | Tooltip |
|----------|---------|
| **Lobster Market** | "Sell your catch here! Rarer lobsters = more Shells!" |
| **Trap Shop** | "Buy new traps and expand your empire! More traps = more lobsters!" |
| **Upgrade Station** | "Spend points to boost catch speed, luck, and more!" |
| **Boat Dock** | "Unlock boats to access DEEP WATER zones with rare lobsters!" |
| **Pet Shop** | "Adopt companions that boost your earnings! 🐱🦀" |
| **Research Lab** | "Discover new lobster species and unlock mutations!" |
| **Trading Post** | "Trade lobsters with other players! Unlocks at Level 10." |
| **Rebirth Shrine** | "The path to ultimate power... sacrifice everything to gain everything!" |

#### **Inventory Items**

| Item Type | Tooltip Format |
|-----------|----------------|
| **Common Lobster** | "Common Lobster 🦞\nValue: 5 Shells\n*The bread and butter of the sea*" |
| **Rare Lobster** | "Rare Lobster 🦞✨\nValue: 50 Shells\n*Ooh, shiny! Keep or sell?*" |
| **Epic Lobster** | "Epic Lobster 🦞💜\nValue: 250 Shells\n*This one's seen things...*" |
| **Legendary Lobster** | "Legendary Lobster 🦞👑\nValue: 1,000 Shells\n*Bow before the claw!*" |
| **Mythic Lobster** | "Mythic Lobster 🦞🌟\nValue: 10,000 Shells\n*Is this even legal?*" |
| **Basic Trap** | "Basic Trap\nCatch Speed: 60s\n*Gets the job done. Eventually.*" |
| **Golden Trap** | "Golden Trap\nCatch Speed: 20s\n+10% Rare Chance\n*Bling bling, catch thing!*" |

#### **Upgrade Categories**

| Upgrade | Tooltip |
|---------|---------|
| **Catch Speed** | "Reduce trap collection time. Time = money = lobsters = MORE money!" |
| **Rare Luck** | "Increase chance of rare lobsters. Stack that luck!" |
| **Trap Capacity** | "Deploy more traps at once. Quantity has a quality of its own." |
| **Sell Bonus** | "Earn more per lobster sold. Capitalism, baby!" |
| **XP Boost** | "Level up faster. Speed run that grind!" |
| **Auto-Collect Range** | "Collect traps from further away. For the lazy efficient!" |

---

### 2.3 "Did You Know?" Tips

> **Display Logic:** Show randomly during loading screens, idle moments (>30s no input), and after sales.

#### **Beginner Tips (Levels 1-10)**
```
💡 Did you know? You can place multiple traps at once by holding SHIFT!

💡 Did you know? Rare lobsters are more common in DEEP WATER zones!

💡 Did you know? Upgrading Catch Speed saves you SO much time!

💡 Did you know? Your first Rebirth unlocks at Level 50!

💡 Did you know? Captain Clawsworth has 47 different voice lines? Talk to him!

💡 Did you know? The Golden Hour (6-7 PM server time) gives 2x XP!

💡 Did you know? You can favorite items to prevent selling them!
```

#### **Intermediate Tips (Levels 11-30)**
```
💡 Did you know? Pets give passive bonuses! Check the Pet Shop!

💡 Did you know? Completing Daily Quests gives bonus Pearls!

💡 Did you know? You can trade lobsters with friends at the Trading Post!

💡 Did you know? Each Rebirth gives +25% permanent Shell bonus!

💡 Did you know? Mutant Lobsters sell for 5x normal value!

💡 Did you know? Joining a Crew gives shared bonuses to all members!

💡 Did you know? The Research Lab can unlock secret lobster species!
```

#### **Advanced Tips (Levels 31-50)**
```
💡 Did you know? The Abyss Zone has a 0.1% chance to spawn Big Red!

💡 Did you know? 5 Rebirths unlock the Mythic Trap Blueprint!

💡 Did you know? Maxing all upgrades before Rebirth gives a secret achievement!

💡 Did you know? The Lobster King title requires catching every species!

💡 Did you know? Your trap placement pattern affects spawn rates!

💡 Did you know? Night time (in-game) increases Legendary spawn chance!
```

#### **Fun/Lore Tips**
```
💡 Did you know? Captain Clawsworth's real name is Gerald. Don't tell him I told you.

💡 Did you know? Big Red has never been defeated... YET.

💡 Did you know? The devs' favorite lobster is the Rainbow Lobster. We're biased.

💡 Did you know? There's a hidden disco ball under the pier. Find it! 🕺

💡 Did you know? Lobsters can live over 100 years? These ones won't. You're selling them.

💡 Did you know? The record for most lobsters caught in one day is 47,832!
```

---

## 3. Onboarding Rewards

### 3.1 Starter Pack Contents

**Given immediately upon first join:**

| Item | Quantity | Purpose |
|------|----------|---------|
| Basic Wooden Trap | 1 | Start catching immediately |
| Shells | 50 | First purchase possible |
| Bait (Common) | 10 | +5% catch speed consumable |
| Lucky Charm (1hr) | 1 | +10% rare chance for first session |
| Name Tag | 1 | Cosmetic - "Rookie Fisher" title |

**Visual Presentation:**
```
┌─────────────────────────────────────────┐
│      🎁 WELCOME PACKAGE! 🎁             │
│  ─────────────────────────────────────  │
│                                         │
│   🪤 Basic Trap .............. x1       │
│   🐚 Shells .................. x50      │
│   🪱 Bait .................... x10      │
│   🍀 Lucky Charm (1hr) ....... x1       │
│   🏷️ "Rookie Fisher" Title ... x1       │
│                                         │
│        [ CLAIM ALL! ]                   │
│                                         │
│   "Every legend starts somewhere!"      │
└─────────────────────────────────────────┘
```

---

### 3.2 Tutorial Completion Rewards

**Given after completing all tutorial steps:**

| Reward | Value | Message |
|--------|-------|---------|
| Shells | 200 | "For being such a fast learner!" |
| Improved Trap | 1 | "An upgrade from that driftwood disaster!" |
| Upgrade Point | 3 | "Spend these wisely... or don't! It's your empire!" |
| Pet Egg (Common) | 1 | "Your first companion awaits!" |
| Daily Quest Unlock | — | "New quests available every day!" |
| XP Boost (2hr) | 1 | "Level up faster, tycoon!" |
| Title: "Graduate" | 1 | "You survived Clawsworth's training!" |

**Achievement Unlocked:**
```
🏆 ACHIEVEMENT UNLOCKED!
━━━━━━━━━━━━━━━━━━━━━━━━━
"First Steps" 
Complete the tutorial

Reward: +50 XP, Graduate Title
━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

### 3.3 First 7 Days Login Bonuses

> **Philosophy:** Escalating value creates habit. Day 7 is the BIG reward.

| Day | Reward | Cumulative Value | Hook |
|-----|--------|------------------|------|
| **Day 1** | 100 Shells + 5 Bait | Low | "Welcome back!" |
| **Day 2** | 150 Shells + Common Pet Egg | Medium | Pet system hook |
| **Day 3** | 200 Shells + 1 Upgrade Point | Medium | Progression hook |
| **Day 4** | 300 Shells + Rare Bait x5 | Medium-High | Better loot teaser |
| **Day 5** | 500 Shells + Rare Pet Egg | High | Rare = excitement |
| **Day 6** | 750 Shells + 3 Upgrade Points + Lucky Charm (4hr) | Very High | Building to finale |
| **Day 7** | 2,000 Shells + EPIC TRAP + Epic Pet Egg + Exclusive "Dedicated" Title | MASSIVE | Week 1 celebration! |

**Visual Calendar:**
```
┌─────────────────────────────────────────────────────────────┐
│  🗓️  7-DAY LOGIN STREAK                              Day 3  │
├─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┤
│  DAY 1  │  DAY 2  │  DAY 3  │  DAY 4  │  DAY 5  │  DAY 6  │  DAY 7  │
│   ✅    │   ✅    │   🔓    │   🔒    │   🔒    │   🔒    │   🔒    │
│  100🐚  │  150🐚  │  200🐚  │  300🐚  │  500🐚  │  750🐚  │ 2000🐚  │
│ +5 Bait │ +🥚Pet  │ +1⬆️    │+RareBait│+🥚Rare  │ +3⬆️+🍀 │+EPIC🪤  │
├─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┤
│                    [ CLAIM DAY 3 REWARD! ]                          │
│                                                                     │
│  ⚠️ Don't break your streak! Miss a day = restart from Day 1!      │
└─────────────────────────────────────────────────────────────────────┘
```

**Streak Reset Warning (shown if player missed yesterday):**
```
😢 Oh no! Your streak was reset!
You missed a day, but that's okay — 
Day 1 is waiting for you! Keep going!
```

---

## 4. Help System

### 4.1 In-Game Help Menu Structure

**Access:** Press `H` or tap `❓` button (bottom-right corner)

```
┌────────────────────────────────────────────────────────────┐
│  📚 HELP CENTER                                    [X]     │
├────────────────────────────────────────────────────────────┤
│                                                            │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ 🔍 Search: [Type your question here...]              │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                            │
│  📖 CATEGORIES                                             │
│  ────────────────────────────────                          │
│  │► Getting Started                                        │
│  │   ├── How to Play                                       │
│  │   ├── Controls                                          │
│  │   └── Your First Hour                                   │
│  │                                                         │
│  │► Traps & Catching                                       │
│  │   ├── Trap Types                                        │
│  │   ├── Placement Tips                                    │
│  │   └── Catch Mechanics                                   │
│  │                                                         │
│  │► Lobsters & Selling                                     │
│  │   ├── Rarity Guide                                      │
│  │   ├── Selling Tips                                      │
│  │   └── Collection Log                                    │
│  │                                                         │
│  │► Upgrades & Progression                                 │
│  │   ├── Upgrade Guide                                     │
│  │   ├── Rebirth Explained                                 │
│  │   └── Level Rewards                                     │
│  │                                                         │
│  │► Social Features                                        │
│  │   ├── Trading                                           │
│  │   ├── Crews                                             │
│  │   └── Leaderboards                                      │
│  │                                                         │
│  │► FAQ                                                    │
│  │                                                         │
│  └── 📧 Contact Support                                    │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

---

### 4.2 FAQ Content

#### **Getting Started**

**Q: How do I start catching lobsters?**
> Get a trap from Captain Clawsworth or the Trap Shop. Walk to the blue TRAP ZONE in the water. Click to place your trap. Wait for the timer, then collect your catch! Easy peasy, lobster squeezy!

**Q: What are Shells and how do I get more?**
> Shells 🐚 are your main currency! Earn them by selling lobsters at the Lobster Market. Rarer lobsters = more Shells. You can also earn Shells from Daily Quests and login bonuses!

**Q: What are Pearls for?**
> Pearls 💎 are premium currency used for special items, boosts, and cosmetics. Earn them from achievements, events, and the daily quest bonus — or purchase them in the shop!

---

#### **Gameplay**

**Q: How do I get rarer lobsters?**
> Multiple ways! 
> • Upgrade your "Rare Luck" stat
> • Use special bait
> • Fish in Deep Water or Abyss zones (requires boats)
> • Equip pets with luck bonuses
> • Play during events and Golden Hour!

**Q: What happens when I Rebirth?**
> Rebirthing resets your progress (level, upgrades, traps) BUT gives you permanent bonuses:
> • +25% Shell earnings per rebirth
> • Exclusive rebirth-only items
> • New zones and content unlock
> It's scary the first time, but SO worth it!

**Q: How do traps work? Can I lose them?**
> Traps never disappear! Once placed, they'll keep catching until you pick them up. You can own multiple traps and place them all at once. The only limit is your Trap Capacity upgrade!

---

#### **Technical**

**Q: My game is lagging! Help!**
> Try these fixes:
> 1. Lower graphics quality in Settings (⚙️)
> 2. Close other Roblox tabs/games
> 3. Reduce player render distance
> 4. Restart the game
> Still laggy? Our game auto-adjusts to your device — lower-end devices will see simplified effects.

**Q: I lost my progress! Is it gone?**
> Your progress saves automatically to Roblox servers. If something seems off:
> 1. Wait 5 minutes and rejoin
> 2. Check you're on the same Roblox account
> 3. Contact support with your username
> We keep backups! We can help recover your account.

**Q: How do I report a bug or player?**
> Use the in-game Report button (🚩 in settings) or join our Discord! For bugs, include:
> • What happened
> • What you were doing
> • Screenshot if possible
> We read every report!

---

#### **Social**

**Q: How does trading work?**
> Unlocks at Level 10! Visit the Trading Post and:
> 1. Select a nearby player
> 2. Add items to your offer
> 3. Both players accept
> 4. Trade complete!
> ⚠️ Always double-check before accepting! No take-backs!

**Q: What are Crews?**
> Crews are player groups (up to 20 members) that share bonuses:
> • Crew XP boost
> • Shared daily quests
> • Crew leaderboard
> • Exclusive crew cosmetics
> Create one for 500 Pearls or join a friend's crew for free!

---

### 4.3 "How to Play" Guide

#### **📖 LOBSTER TYCOON: THE COMPLETE GUIDE**

---

**🎯 YOUR GOAL**
Become the ultimate Lobster Tycoon! Catch lobsters, sell them for profit, upgrade your operation, and build a crustacean empire!

---

**🔄 THE CORE LOOP**

```
  ┌─────────┐
  │  TRAP   │ ──► Place in water
  └────┬────┘
       │
       ▼
  ┌─────────┐
  │  WAIT   │ ──► Timer counts down
  └────┬────┘
       │
       ▼
  ┌─────────┐
  │ COLLECT │ ──► Grab your lobsters!
  └────┬────┘
       │
       ▼
  ┌─────────┐
  │  SELL   │ ──► Lobster Market
  └────┬────┘
       │
       ▼
  ┌─────────┐
  │ UPGRADE │ ──► Better stats!
  └────┬────┘
       │
       ▼
   (REPEAT!)
```

---

**🦞 LOBSTER RARITIES**

| Rarity | Color | Base Value | Spawn Rate |
|--------|-------|------------|------------|
| Common | Brown | 5 🐚 | 70% |
| Uncommon | Green | 15 🐚 | 20% |
| Rare | Blue | 50 🐚 | 7% |
| Epic | Purple | 250 🐚 | 2.5% |
| Legendary | Gold | 1,000 🐚 | 0.4% |
| Mythic | Rainbow | 10,000 🐚 | 0.1% |

---

**⬆️ UPGRADES**

Spend upgrade points to improve:
- **Catch Speed** — Faster trap timers
- **Rare Luck** — Better lobster chances
- **Trap Capacity** — More active traps
- **Sell Bonus** — More money per sale
- **XP Boost** — Level up faster
- **Auto-Range** — Collect from further

*Tip: Balance your upgrades! Speed is great early, luck matters more later.*

---

**🔄 REBIRTH**

At Level 50, you can REBIRTH:
- Resets: Level, upgrades, traps, currency
- Keeps: Pets, cosmetics, achievements
- Gains: +25% permanent Shell bonus, new content, exclusive items

*Each rebirth makes you permanently stronger!*

---

**🗺️ ZONES**

| Zone | Unlock | Lobster Quality |
|------|--------|-----------------|
| Shallow Waters | Start | Common mostly |
| Deep Waters | Level 15 + Basic Boat | Rare chance ↑ |
| The Reef | Level 30 + Fishing Boat | Epic chance ↑ |
| The Abyss | Level 45 + Submarine | Legendary chance ↑↑ |
| ??? | 3 Rebirths | Mythic zone... |

---

**📅 DAILY ACTIVITIES**

- ✅ **Daily Login** — Claim your streak reward!
- ✅ **Daily Quests** — 3 new quests each day
- ✅ **Golden Hour** — 6-7 PM server time = 2x XP
- ✅ **Crew Check-in** — Claim crew bonus
- ✅ **Pet Training** — Keep those bonuses active!

---

**🏆 TIPS FOR SUCCESS**

1. **Play daily** — Streak bonuses add up FAST
2. **Join a crew** — Shared bonuses are OP
3. **Don't hoard** — Sell often, upgrade often
4. **Try new zones** — Risk = reward
5. **Rebirth early** — The bonuses compound!
6. **Have fun** — It's a game about cartoon lobsters. Don't stress! 🦞

---

## 5. Retention Hooks

### 5.1 What Brings Players Back After First Session

#### **Immediate Hooks (Exit Session)**

When player leaves, show:
```
┌────────────────────────────────────────────────────────────┐
│                                                            │
│      🌙 Leaving already? See you tomorrow!                 │
│                                                            │
│  ─────────────────────────────────────────────────────     │
│                                                            │
│   📅 Tomorrow's Login Bonus:                               │
│      Day 2: 150 Shells + Pet Egg!                         │
│                                                            │
│   📋 Daily Quests reset in: 14:32:05                      │
│                                                            │
│   🦞 While you're gone, your pet will train!              │
│      Current pet: Lucky Crab (Level 2)                    │
│                                                            │
│   🎉 WEEKEND EVENT STARTING FRIDAY!                       │
│      2x Everything! Don't miss it!                        │
│                                                            │
│               [ KEEP PLAYING ]  [ LEAVE ]                  │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

#### **Return Triggers (Notifications if enabled)**

| Trigger | Timing | Message |
|---------|--------|---------|
| Daily Reset | 24hr after last play | "🦞 Your Daily Quests are ready! Plus login bonus waiting!" |
| Streak Warning | 22hr since last login | "⚠️ Your streak ends in 2 hours! Don't lose Day 4 progress!" |
| Event Start | Event launch | "🎉 2X WEEKEND is LIVE! Catch more, earn more!" |
| Pet Notification | 48hr AFK | "🐱 Your pet misses you! They've been training alone..." |
| Friend Activity | Friend plays | "👋 [Friend] is playing Lobster Tycoon! Join them?" |
| Progress Milestone | Near level-up | "🎯 You're SO close to Level 20! Just 150 XP to go!" |

---

#### **Core Retention Features**

1. **Loss Aversion (Streaks)**
   - 7-day login streak resets if missed
   - Day 7 reward is ~10x Day 1
   - Emotional investment grows daily

2. **Variable Rewards (Lobster RNG)**
   - "Will I get a Legendary today?"
   - Rare catches feel AMAZING
   - Collection log completion drive

3. **Progression Visibility**
   - Clear level bar always visible
   - "Next unlock in X levels" teaser
   - Rebirth goal dangling at Level 50

4. **Social Proof**
   - Leaderboards show "you're almost in top 100!"
   - Crew activity notifications
   - "X players online right now!"

5. **Sunk Cost**
   - "You've played 3 hours total!"
   - Permanent achievements visible
   - Pet level = time invested

---

### 5.2 Daily Quests Introduction

**When:** After tutorial completion, pop-up appears

```
CAPTAIN CLAWSWORTH: "Oh! Almost forgot! Check the Quest Board!"

CLAWSWORTH: "Every day, I post three challenges. Complete 'em for BONUS REWARDS!"

CLAWSWORTH: "And if you do ALL THREE... you get a BONUS BONUS! 
             That's right. Double bonus. I'm very generous."
```

**Daily Quest UI:**
```
┌────────────────────────────────────────────────────────────┐
│  📋 DAILY QUESTS                    Resets in: 14:22:33   │
├────────────────────────────────────────────────────────────┤
│                                                            │
│  ☐ Catch 20 lobsters                    [████████░░] 16/20 │
│     Reward: 100 Shells                                     │
│                                                            │
│  ☐ Sell 500 Shells worth of lobsters    [██████░░░░] 312/500│
│     Reward: 50 Shells + 5 Bait                            │
│                                                            │
│  ☐ Place 5 traps in Deep Water          [██░░░░░░░░] 1/5   │
│     Reward: Rare Bait x3                                   │
│                                                            │
│  ─────────────────────────────────────────────────────     │
│  ⭐ COMPLETE ALL THREE FOR BONUS:                          │
│     25 Pearls + Mystery Pet Egg!                          │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

**Quest Types (Rotating Pool):**

| Category | Examples |
|----------|----------|
| **Catching** | Catch X lobsters, Catch X rare+ lobsters, Catch specific species |
| **Selling** | Sell X Shells worth, Sell X lobsters, Sell without rares |
| **Progression** | Earn X XP, Upgrade X times, Buy X traps |
| **Exploration** | Place traps in [Zone], Visit [Building], Find hidden item |
| **Social** | Trade with player, Gift a lobster, Play with crew member |
| **Time-based** | Play during Golden Hour, Log in 2 days in a row |

**Difficulty Scaling:**
- Quests scale with player level
- Higher level = harder quests = better rewards
- Post-Rebirth players get "Veteran Quests" with exclusive rewards

---

### 5.3 Social Features Introduction

**Unlock Progression:**

| Feature | Unlock At | Introduction |
|---------|-----------|--------------|
| **Friend Lobby** | Level 5 | See friends online, join their server |
| **Trading** | Level 10 | Trade lobsters and items P2P |
| **Gifting** | Level 12 | Send gifts to friends (limited daily) |
| **Crews** | Level 15 | Join or create a crew (guild system) |
| **Crew Quests** | Level 15 | Shared objectives for crew rewards |
| **Leaderboards** | Level 20 | Global and friends rankings |
| **Crew Wars** | Level 25 | Weekly crew vs crew competitions |
| **Mentorship** | 1 Rebirth | Guide new players for rewards |

---

#### **Trading Post Introduction (Level 10)**

```
🎉 NEW FEATURE UNLOCKED!

     🤝 TRADING POST 🤝

"Trade lobsters and items with other players!"

• Visit the Trading Post building
• Select a nearby player to trade with
• Add items → Both accept → Trade complete!

⚠️ Pro tip: Check item values before trading!
   No take-backs once confirmed!

          [ GOT IT! ]
```

---

#### **Crew System Introduction (Level 15)**

```
🎉 NEW FEATURE UNLOCKED!

     👥 CREW SYSTEM 👥

"Join forces with other players!"

CREW BENEFITS:
• +10% Shell bonus for all members
• Shared Crew Quests with BIG rewards
• Crew chat and crew base
• Compete in Crew Wars for glory!

CREATE A CREW: 500 Pearls
JOIN A CREW: FREE!

Ask friends or browse Public Crews!

        [ FIND A CREW ]  [ LATER ]
```

---

#### **Social Retention Loops**

1. **Crew Daily Check-in**
   - Log in → Crew bonus activates
   - "3/5 crew members online today!"
   - Guilt factor if you're the missing member

2. **Crew Quests**
   - "Crew must collectively catch 1,000 lobsters today"
   - Individual contribution visible
   - Creates accountability and teamwork

3. **Friend Leaderboards**
   - "You're #3 among friends this week!"
   - "Sarah just passed you! Reclaim your spot!"
   - Competitive drive with low stakes

4. **Gifting Reciprocity**
   - Daily free gift to send to friend
   - Creates obligation loop
   - "Jake sent you a gift! Send one back?"

5. **Mentorship Program**
   - Veteran players paired with newbies
   - Mentor gets rewards when mentee progresses
   - Builds community investment

---

## Appendix A: Tutorial Skip Option

**For Returning Players (detected via Roblox data):**
```
┌────────────────────────────────────────────────────────────┐
│                                                            │
│   🦞 Welcome back to Lobster Tycoon!                       │
│                                                            │
│   Looks like you've played before on another device.       │
│                                                            │
│   [ SKIP TUTORIAL ]     [ PLAY TUTORIAL ANYWAY ]           │
│                                                            │
│   (You'll still get the starter rewards!)                  │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

---

## Appendix B: Analytics Events to Track

| Event | Purpose |
|-------|---------|
| `tutorial_started` | Baseline |
| `tutorial_step_X_complete` | Funnel analysis |
| `tutorial_skipped` | Skip rate |
| `tutorial_completed` | Completion rate |
| `first_trap_placed` | Core loop start |
| `first_sale` | Monetization understanding |
| `first_upgrade` | Progression understanding |
| `day_2_return` | D1 retention |
| `day_7_return` | D7 retention |
| `first_trade` | Social engagement |
| `crew_joined` | Community engagement |
| `first_rebirth` | Long-term retention |
| `tutorial_NPC_clicked` | Help-seeking behavior |

---

## Appendix C: Localization Notes

All tutorial text should be:
- ≤ 40 characters for tooltips (fits mobile)
- ≤ 100 characters for NPC dialogue bubbles
- Tagged for translation system
- Avoid idioms that don't translate (but keep Captain Clawsworth's personality!)

**Example localization keys:**
```
tutorial.welcome.title = "Welcome to Lobster Bay!"
tutorial.trap.place = "Place your trap in the water!"
npc.clawsworth.intro = "Ahoy there, landlubber!"
tooltip.shells = "Your main currency! Sell lobsters to earn more."
```

---

*Document Version: 1.0*  
*Last Updated: Tutorial Design Phase*  
*Author: Tutorial Design Subagent*  

---

> *"A good tutorial is invisible. A great tutorial is memorable."*  
> *— Captain Clawsworth, probably*
