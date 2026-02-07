# 🦞 Lobster Tycoon - Economy Balance Document
> Version 1.0 | Last Updated: 2025-01-14

---

## Table of Contents
1. [Currency Systems](#1-currency-systems)
2. [Pricing Tables](#2-pricing-tables)
3. [Progression Curves](#3-progression-curves)
4. [Monetization Math](#4-monetization-math)
5. [Anti-Inflation Mechanics](#5-anti-inflation-mechanics)
6. [Formulas Reference](#6-formulas-reference)

---

## 1. Currency Systems

### 1.1 Primary Currency: 🐚 Shell Coins (SC)

The backbone of the economy. Earned through gameplay.

| Source | Earnings |
|--------|----------|
| Selling Common Lobster | 5-15 SC |
| Selling Mythical Lobster | 50,000-150,000 SC |
| Completing Orders | 50-5,000 SC |
| Daily Bonus (base) | 100 SC |
| Achievements | 500-50,000 SC |

**Design Philosophy:** Abundant enough to feel rewarding, scarce enough to require decisions.

---

### 1.2 Premium Currency: 🔱 Tridents (TR)

Premium currency purchased with Robux or earned slowly in-game.

| Robux | Tridents | Bonus | Value/Robux |
|-------|----------|-------|-------------|
| 75 R$ | 100 TR | — | 1.33 TR/R$ |
| 150 R$ | 225 TR | +12.5% | 1.50 TR/R$ |
| 400 R$ | 650 TR | +21.9% | 1.63 TR/R$ |
| 800 R$ | 1,500 TR | +40.6% | 1.88 TR/R$ |
| 1,700 R$ | 3,500 TR | +53.8% | 2.06 TR/R$ |

**F2P Trident Earning:**
- Daily Login Streak (Day 7, 14, 21, 28): 5-25 TR
- Weekly Challenge Completion: 10 TR
- Achievement Milestones: 5-50 TR
- Event Participation: 5-20 TR

**Estimated F2P Monthly Earnings:** 80-150 TR (~60-110 R$ value)

---

### 1.3 Event Currency: 🌊 Tide Tokens (TT)

Seasonal currency that resets each event (6-8 week cycles).

| Event Theme | Currency Name | Exchange Rate |
|-------------|---------------|---------------|
| Summer Splash | Sand Dollars | 1 TT = 50 SC |
| Frozen Depths | Ice Crystals | 1 TT = 50 SC |
| Coral Festival | Coral Chips | 1 TT = 50 SC |
| Pirate Plunder | Doubloons | 1 TT = 50 SC |

**Earning Rate:** 1-5 TT per lobster sale during events (based on rarity)

---

## 2. Pricing Tables

### 2.1 Lobster Values by Rarity

| Rarity | Spawn Rate | Base Value (SC) | Max Value (SC)* | Breeding Time |
|--------|------------|-----------------|-----------------|---------------|
| Common | 50% | 5 | 15 | 30 sec |
| Uncommon | 25% | 25 | 75 | 2 min |
| Rare | 15% | 150 | 450 | 10 min |
| Epic | 7% | 1,000 | 3,000 | 30 min |
| Legendary | 2.5% | 8,000 | 24,000 | 2 hours |
| Mythical | 0.5% | 50,000 | 150,000 | 8 hours |

*Max value achieved with perfect traits + quality upgrades

**Value Multipliers:**
```
Final Value = Base Value × Size Mult × Quality Mult × Trait Mult × Global Mult

Size Multipliers:
- Tiny (10%): 0.5x
- Small (25%): 0.8x
- Medium (40%): 1.0x
- Large (20%): 1.5x
- Giant (5%): 2.5x

Quality Multipliers:
- Standard: 1.0x
- Premium: 1.25x
- Pristine: 1.5x
- Perfect: 2.0x

Trait Multipliers (stackable, max 3 traits):
- Golden Claws: +20%
- Rainbow Shell: +30%
- Electric Aura: +25%
- Ancient: +50%
- Cosmic: +100%
```

---

### 2.2 Tank Costs & Capacities

| Tank Tier | Cost (SC) | Capacity | Breed Speed | Unlock Level |
|-----------|-----------|----------|-------------|--------------|
| Starter Pool | FREE | 5 | 1.0x | 1 |
| Basic Tank | 500 | 10 | 1.0x | 3 |
| Advanced Tank | 2,500 | 20 | 1.1x | 8 |
| Premium Tank | 15,000 | 40 | 1.25x | 15 |
| Elite Tank | 75,000 | 75 | 1.5x | 25 |
| Master Tank | 300,000 | 125 | 1.75x | 40 |
| Ultimate Tank | 1,500,000 | 200 | 2.0x | 60 |
| Legendary Lagoon | 10,000,000 | 350 | 2.5x | 80 |
| Mythical Marina | 50,000,000 SC + 500 TR | 500 | 3.0x | 100 |

**Tank Slots:**
```
Max Tanks = 2 + floor(Level / 10)
```
- Level 1-9: 2 tanks
- Level 10-19: 3 tanks
- Level 100: 12 tanks

---

### 2.3 Upgrade Costs & Scaling

#### A. Production Upgrades

| Upgrade | Base Cost | Formula | Max Level | Effect per Level |
|---------|-----------|---------|-----------|------------------|
| Breeding Speed | 100 SC | `100 × 1.5^level` | 50 | +3% breed speed |
| Lobster Value | 200 SC | `200 × 1.6^level` | 50 | +2% sell value |
| Tank Capacity | 500 SC | `500 × 1.8^level` | 30 | +5% capacity |
| Auto-Collect | 1,000 SC | `1000 × 2.0^level` | 20 | +5% auto-collect rate |
| Luck Boost | 2,000 SC | `2000 × 1.7^level` | 40 | +1% rare spawn chance |

**Example: Breeding Speed Costs**
| Level | Cost | Total Invested | Cumulative Bonus |
|-------|------|----------------|------------------|
| 1 | 100 | 100 | +3% |
| 5 | 759 | 2,031 | +15% |
| 10 | 5,766 | 11,280 | +30% |
| 20 | 328,350 | 436,852 | +60% |
| 50 | ~637M | ~1.27B | +150% |

#### B. Facility Upgrades

| Building | Base Cost | Provides | Upgrade Cost Formula |
|----------|-----------|----------|---------------------|
| Hatchery | 5,000 SC | Auto-breeding | `5000 × 2.2^level` |
| Research Lab | 25,000 SC | Trait discovery | `25000 × 2.0^level` |
| Trading Post | 10,000 SC | Player trading | `10000 × 1.8^level` |
| Trophy Room | 50,000 SC | Collection bonuses | Flat 50K per upgrade |
| Deep Sea Dock | 100,000 SC | Expeditions | `100000 × 2.5^level` |

---

### 2.4 Prestige System: "Reincarnation"

When players reach Level 50+, they can "Reincarnate" to reset progress for permanent bonuses.

| Reincarnation | Level Req | SC Bonus | Rare Chance | Special Reward |
|---------------|-----------|----------|-------------|----------------|
| 1st | 50 | +10% | +2% | Bronze Crown |
| 2nd | 55 | +20% | +4% | Silver Crown |
| 3rd | 60 | +32% | +6% | Gold Crown |
| 4th | 65 | +46% | +8% | Platinum Crown |
| 5th | 70 | +62% | +10% | Diamond Crown |
| 10th | 100 | +159% | +20% | Cosmic Crown |
| 20th | 150 | +619% | +40% | Eternal Crown |

**Formula:**
```
SC Bonus = (1.1^reincarnation - 1) × 100%
Rare Chance = 2% × reincarnation
```

**What Resets:**
- Shell Coins → 0
- Level → 1
- Tanks → Starter Pool only
- Upgrades → Level 0

**What Persists:**
- Tridents
- Reincarnation bonuses
- Crowns & cosmetics
- Unlocked lobster species in Codex
- Achievements

---

## 3. Progression Curves

### 3.1 XP & Level Requirements

**Formula:**
```
XP Required = floor(100 × level^1.8)
```

| Level | XP Required | Cumulative XP | Est. Time to Reach |
|-------|-------------|---------------|-------------------|
| 1 | 0 | 0 | — |
| 5 | 1,149 | 2,874 | 15 min |
| 10 | 3,981 | 15,849 | 1 hour |
| 15 | 8,318 | 45,152 | 3 hours |
| 20 | 14,359 | 98,715 | 8 hours |
| 25 | 22,361 | 185,174 | 1 day |
| 30 | 32,540 | 314,534 | 2 days |
| 40 | 59,948 | 714,870 | 5 days |
| 50 | 97,467 | 1,363,352 | 1 week |
| 75 | 252,268 | 4,642,857 | 3 weeks |
| 100 | 501,187 | 11,220,185 | 2 months |

**XP Sources:**
| Action | XP Earned |
|--------|-----------|
| Sell Common | 1 XP |
| Sell Uncommon | 3 XP |
| Sell Rare | 10 XP |
| Sell Epic | 35 XP |
| Sell Legendary | 150 XP |
| Sell Mythical | 750 XP |
| Complete Order | 25-500 XP |
| Daily Login | 50 XP |
| Achievement | 100-10,000 XP |

---

### 3.2 Time-to-Milestone Estimates

#### 🕐 1-Hour Player
| Milestone | Expected Progress |
|-----------|------------------|
| Level | 8-12 |
| Shell Coins | 3,000-8,000 |
| Tanks | 2-3 |
| Best Lobster | Rare (possibly Epic) |
| Total Lobsters Sold | 150-300 |

#### 📅 1-Day Player (4-6 hours active)
| Milestone | Expected Progress |
|-----------|------------------|
| Level | 22-28 |
| Shell Coins | 50,000-150,000 |
| Tanks | 4-5 |
| Best Lobster | Epic-Legendary |
| Reincarnation Ready? | No |
| Upgrades | Breeding 8-12, Value 6-10 |

#### 📆 1-Week Player (20-30 hours active)
| Milestone | Expected Progress |
|-----------|------------------|
| Level | 50-65 |
| Shell Coins | 500K-2M |
| Tanks | 6-8 (including Premium+) |
| Best Lobster | Legendary (possibly Mythical) |
| Reincarnations | 0-2 |
| F2P Tridents | 25-50 |

---

### 3.3 Content Unlock Order

```
Level 1:   Tutorial, Starter Pool, Common lobsters
Level 3:   Basic Tank, Trading unlocked
Level 5:   Uncommon lobsters, First expedition type
Level 8:   Advanced Tank, Order Board
Level 10:  Rare lobsters, Hatchery building
Level 15:  Premium Tank, Deep Sea Dock
Level 20:  Epic lobsters, Research Lab
Level 25:  Elite Tank, PvP Lobster Battles
Level 30:  Legendary lobsters, Guilds/Clans
Level 40:  Master Tank, Boss Encounters
Level 50:  Mythical lobsters, Reincarnation
Level 60:  Ultimate Tank, Cosmic Events
Level 80:  Legendary Lagoon, Dimension Rifts
Level 100: Mythical Marina, Endgame Challenges
```

---

## 4. Monetization Math

### 4.1 Game Pass Value Propositions

| Game Pass | Robux | Key Benefits | Value Analysis |
|-----------|-------|--------------|----------------|
| **VIP Pass** | 399 R$ | 2x XP, +25% SC, VIP server access, exclusive pet | ~1 week of grinding saved |
| **Auto-Collect** | 149 R$ | Full AFK farming, collect while offline (1hr) | Essential QoL |
| **Lucky Claws** | 249 R$ | +15% rare chance permanently | ~8,000 Legendaries extra over career |
| **Tank Expander** | 199 R$ | +3 tank slots, +50 capacity per tank | End-game optimization |
| **Speed Breeder** | 99 R$ | -25% breeding time | ~33% more lobsters |
| **Double Prestige** | 349 R$ | 2x reincarnation bonuses | Long-term compounding |
| **Season Pass** | 449 R$ | All battle pass rewards + 20% XP | See §4.3 |

**F2P Comparison:** A player who buys VIP + Auto-Collect (548 R$) progresses ~2-3x faster than pure F2P.

---

### 4.2 Daily Login Rewards (30-Day Cycle)

| Day | Reward | Value (SC equivalent) |
|-----|--------|----------------------|
| 1 | 100 SC | 100 |
| 2 | 150 SC | 150 |
| 3 | 200 SC | 200 |
| 4 | 250 SC | 250 |
| 5 | Rare Egg | ~500 |
| 6 | 400 SC | 400 |
| 7 | **5 Tridents** | ~375 R$ value |
| 8 | 500 SC | 500 |
| 9 | 600 SC | 600 |
| 10 | Epic Egg | ~2,000 |
| 11 | 800 SC | 800 |
| 12 | 1,000 SC | 1,000 |
| 13 | 1,200 SC | 1,200 |
| 14 | **10 Tridents** | ~750 R$ value |
| 15 | Legendary Egg | ~12,000 |
| 16 | 2,000 SC | 2,000 |
| 17 | 2,500 SC | 2,500 |
| 18 | 3,000 SC | 3,000 |
| 19 | 4,000 SC | 4,000 |
| 20 | Random Pet | ~5,000 |
| 21 | **15 Tridents** | ~1,125 R$ value |
| 22 | 6,000 SC | 6,000 |
| 23 | 8,000 SC | 8,000 |
| 24 | 10,000 SC | 10,000 |
| 25 | Exclusive Title | Cosmetic |
| 26 | 15,000 SC | 15,000 |
| 27 | 20,000 SC | 20,000 |
| 28 | **25 Tridents** | ~1,875 R$ value |
| 29 | Legendary Egg | ~12,000 |
| 30 | **MYTHICAL EGG** | ~75,000 |

**Total 30-Day Value:** ~152,250 SC + 55 Tridents

---

### 4.3 Battle Pass / Season Structure

**Season Duration:** 8 weeks (56 days)

**Tiers:** 50 levels

**XP per Tier:** 2,000 Season XP (increases 2% per tier)

| Track | Cost | Rewards Summary |
|-------|------|-----------------|
| Free Track | FREE | 25K SC, 10 TR, 2 skins, 1 pet |
| Premium Track | 449 R$ | 150K SC, 75 TR, 8 skins, 3 pets, 1 Mythical Egg, exclusive lobster species |

**Season XP Sources:**
- Daily Challenges: 500-1,500 XP
- Weekly Challenges: 3,000-10,000 XP
- Selling Lobsters: 1 XP per 100 SC value
- Time Played: 100 XP per 30 min (cap 400/day)

**Completion Estimate:**
- Casual (1hr/day): Tier 35-40
- Active (2-3hr/day): Tier 50 with 1-2 weeks spare
- Hardcore: Tier 50 in 4-5 weeks

---

## 5. Anti-Inflation Mechanics

### 5.1 Currency Sinks

| Sink | Description | Estimated SC Drain |
|------|-------------|-------------------|
| **Upgrade Scaling** | Exponential costs | 40% of economy |
| **Tank Purchases** | Major investments | 20% of economy |
| **Reincarnation Reset** | Full SC wipe | 15% of economy |
| **Expedition Fees** | 500-50,000 SC per expedition | 10% of economy |
| **Cosmetic Shop** | Rotating items, 5K-500K SC | 8% of economy |
| **Lottery/Gacha** | Daily spin: 1,000 SC | 5% of economy |
| **Trading Tax** | 5% tax on all trades | 2% of economy |

### 5.2 Prestige Reset Values

Upon Reincarnation:
```
SC Reset: 100% (0 SC remaining)
Upgrade Reset: 100% (back to level 0)
Tank Reset: 100% (only Starter Pool)

Retained Value:
- Tridents: 100%
- Cosmetics: 100%
- Codex: 100%
- Achievement Progress: 100%
- Reincarnation Multipliers: Permanent
```

**Soft Floor:** Players always have the Starter Pool and can earn immediately.

---

### 5.3 Limited-Time Items

#### Seasonal Exclusives
| Season | Items | Cost Range | FOMO Factor |
|--------|-------|------------|-------------|
| Summer | Beach skins, Tropical lobsters | 50-500 TT | High |
| Halloween | Spooky pets, Ghost lobster | 75-600 TT | Extreme |
| Winter | Ice tanks, Frost lobster | 50-500 TT | High |
| Anniversary | Gold everything | 100-1000 TT | Extreme |

#### Flash Sales (Random, 24-48hr)
- 30-50% off specific items
- Bundle deals (Tank + Upgrades)
- Double TR weekends

#### Auction House (Weekly)
- Unique Mythical variants
- Starting bid: 100K SC
- Creates massive SC sink for top players

---

## 6. Formulas Reference

### Quick Reference Sheet

```lua
-- XP to Level
XP_Required(level) = floor(100 * level^1.8)

-- Upgrade Cost
Upgrade_Cost(base, level, mult) = base * mult^level

-- Lobster Value
Lobster_Value = Base * Size * Quality * Trait * Reincarnation_Bonus * Global_Events

-- Breeding Time
Breed_Time(base, speed_level, tank_mult) = base / ((1 + 0.03*speed_level) * tank_mult)

-- Rare Spawn Chance
Spawn_Chance(base, luck_level, reincarnation) = base + (0.01*luck_level) + (0.02*reincarnation)

-- Daily Login SC
Day_Reward(day) = floor(100 * 1.15^(day-1)) -- for SC days, capped at 20K

-- Tank Slot Cap
Max_Tanks = 2 + floor(Level / 10)

-- Reincarnation Bonuses
SC_Mult = 1.1^reincarnation
Rare_Mult = 1 + (0.02 * reincarnation)
```

---

## Balance Philosophy Notes

### F2P Friendliness ✅
- **No paywalls** for content (everything earnable)
- **Generous daily rewards** (55 TR/month free = ~$0.40 value)
- **Meaningful offline progress** for casual players
- **Skill matters** — trait breeding knowledge helps more than money

### Monetization Ethics ✅
- **No loot boxes** with real money (Tridents → guaranteed items)
- **Cosmetics focus** — paying doesn't break the game
- **Transparency** — all odds visible to players
- **Value perception** — passes save time, not required

### Engagement Loops 🔄
1. **Micro (seconds):** Breed → Collect → Sell
2. **Short (minutes):** Complete orders, hit milestones
3. **Medium (hours):** Unlock new tank, discover rare lobster
4. **Long (days):** Reincarnation, season pass progress
5. **Eternal (weeks+):** Collection completion, leaderboards, clan wars

---

*Document maintained by Economy Design Team*
*For simulation spreadsheet, see: `/economy/SIMULATION.xlsx`*
*For A/B test results, see: `/economy/AB_TESTS.md`*
