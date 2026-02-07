# 🦞 LOBSTER TYCOON - World Design Document
> Version 1.0 | World Designer Reference

---

## Table of Contents
1. [World Overview](#world-overview)
2. [Main Tycoon Area](#main-tycoon-area)
3. [Hub World](#hub-world)
4. [Special Zones](#special-zones)
5. [Technical Layout](#technical-layout)

---

## World Overview

```
                          ╔═══════════════════════════════════════╗
                          ║         LOBSTER TYCOON WORLD          ║
                          ╚═══════════════════════════════════════╝
                                           │
                    ┌──────────────────────┼──────────────────────┐
                    │                      │                      │
              ┌─────▼─────┐          ┌─────▼─────┐          ┌─────▼─────┐
              │  PLAYER   │          │    HUB    │          │  SPECIAL  │
              │  TYCOONS  │◄────────►│   WORLD   │◄────────►│   ZONES   │
              │ (Instanced)│          │ (Shared)  │          │ (Shared)  │
              └───────────┘          └───────────┘          └───────────┘
                   │                      │                      │
            ┌──────┴──────┐        ┌──────┴──────┐        ┌──────┴──────┐
            │ 20 Tycoon   │        │ Central    │        │ • The Abyss │
            │ Plots per   │        │ Meeting    │        │ • Racing    │
            │ Server      │        │ Area       │        │ • Breeding  │
            └─────────────┘        └────────────┘        │ • Council   │
                                                         │ • Prestige  │
                                                         └─────────────┘
```

**Scale Reference:** 1 stud = 0.28 meters (standard Roblox scale)

---

## Main Tycoon Area

### Overview
Each player gets their own instanced tycoon plot. Plots are arranged in a coastal bay setting with ocean views. Maximum 20 players per server = 20 tycoon plots.

### Base Plot Layout (Starter - 80x100 studs)

```
    OCEAN SIDE (North)                                    Scale: 1 char = 2 studs
    ═══════════════════════════════════════════════════════════════════════════════
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   DOCK & WATER ACCESS
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   (Lobster Delivery Zone)
    ║                                                                              ║
    ║   ┌─────────────┐    ┌─────────────┐    ┌─────────────┐                     ║
    ║   │  PREMIUM    │    │  PREMIUM    │    │  PREMIUM    │   ← Tier 3 Tanks   ║
    ║   │  TANK #3    │    │  TANK #4    │    │  TANK #5    │     (Locked)        ║
    ║   │   🔒 T3     │    │   🔒 T3     │    │   🔒 T3     │                     ║
    ║   └─────────────┘    └─────────────┘    └─────────────┘                     ║
    ║                                                                              ║
    ║   ┌─────────────┐    ┌─────────────┐    ┌───────────────────────┐           ║
    ║   │   BASIC     │    │   BASIC     │    │    PROCESSING         │           ║
    ║   │   TANK #1   │    │   TANK #2   │    │    FACILITY           │           ║
    ║   │   🦞 T1     │    │   🦞 T1     │    │  ┌─────┐ ┌─────┐     │           ║
    ║   │  (Starter)  │    │  (Starter)  │    │  │SORT │ │PACK │     │           ║
    ║   └─────────────┘    └─────────────┘    │  └─────┘ └─────┘     │           ║
    ║         ↓                  ↓            │  ┌─────┐ ┌─────┐     │           ║
    ║     [Conveyor]         [Conveyor]       │  │GRADE│ │SHIP │     │           ║
    ║         └──────────┬───────┘            │  └─────┘ └─────┘     │           ║
    ║                    ▼                    └───────────────────────┘           ║
    ║   ┌────────────────────────────┐                   │                        ║
    ║   │      COLLECTION HUB        │←──────────────────┘                        ║
    ║   │    [Auto-Collector $$$]    │                                            ║
    ║   │         💰 💰 💰           │                                            ║
    ║   └────────────────────────────┘                                            ║
    ║                                                                              ║
    ║   ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌────────────────────┐         ║
    ║   │  DECO    │  │  DECO    │  │  DECO    │  │    OFFICE/HQ       │         ║
    ║   │  SLOT 1  │  │  SLOT 2  │  │  SLOT 3  │  │  ┌────┐ ┌────┐   │         ║
    ║   │   🪴      │  │   🏆     │  │   🎣     │  │  │UPGR│ │STAT│   │         ║
    ║   └──────────┘  └──────────┘  └──────────┘  │  └────┘ └────┘   │         ║
    ║                                             │    [Rebirth]      │         ║
    ║                                             └────────────────────┘         ║
    ║                                                                              ║
    ║      ════════════════════════════════════════════════                       ║
    ║      ║  EXPANSION ZONE A  ║  EXPANSION ZONE B  ║  EXPANSION ZONE C  ║       ║
    ║      ║      🔒 $5K        ║      🔒 $25K       ║      🔒 $100K      ║       ║
    ║      ════════════════════════════════════════════════                       ║
    ║                                                                              ║
    ═══════════════════════════════════════════════════════════════════════════════
                                    ENTRANCE (South)
                                    [Portal to Hub]
```

### Placement Zones Detail

#### Zone A: Starter Zone (Unlocked at start)
| Zone ID | Size (studs) | Purpose | Max Items |
|---------|--------------|---------|-----------|
| TANK-1 | 20x20 | Basic Lobster Tank | 1 tank |
| TANK-2 | 20x20 | Basic Lobster Tank | 1 tank |
| COLLECT | 30x15 | Collection Hub | 1 collector |
| DECO-1 | 10x10 | Decoration Slot | 1 item |
| DECO-2 | 10x10 | Decoration Slot | 1 item |
| DECO-3 | 10x10 | Decoration Slot | 1 item |
| OFFICE | 25x20 | HQ Building | 1 building |

#### Zone B: Expansion A ($5,000)
```
    ┌────────────────────────────────────────────┐
    │            EXPANSION ZONE A                │
    │            (40x30 studs)                   │
    │                                            │
    │   ┌──────────────┐    ┌──────────────┐    │
    │   │   TANK #6    │    │   TANK #7    │    │   ← Advanced Tanks
    │   │   (Medium)   │    │   (Medium)   │    │
    │   └──────────────┘    └──────────────┘    │
    │                                            │
    │   ┌────────────────────────────────────┐  │
    │   │        FEEDING STATION             │  │   ← Auto-Feeder Unlocks
    │   │     [Reduces manual feeding]       │  │
    │   └────────────────────────────────────┘  │
    │                                            │
    └────────────────────────────────────────────┘
```

#### Zone C: Expansion B ($25,000)
```
    ┌────────────────────────────────────────────┐
    │            EXPANSION ZONE B                │
    │            (40x40 studs)                   │
    │                                            │
    │   ┌──────────────────────────────────┐    │
    │   │       BREEDING POND               │    │   ← Breed rare lobsters
    │   │    ┌────┐  🦞💕🦞  ┌────┐        │    │
    │   │    │EGG │          │EGG │        │    │
    │   │    └────┘          └────┘        │    │
    │   └──────────────────────────────────┘    │
    │                                            │
    │   ┌──────────────┐    ┌──────────────┐    │
    │   │  INCUBATOR   │    │  INCUBATOR   │    │
    │   │     #1       │    │     #2       │    │
    │   └──────────────┘    └──────────────┘    │
    │                                            │
    └────────────────────────────────────────────┘
```

#### Zone D: Expansion C ($100,000)
```
    ┌────────────────────────────────────────────┐
    │            EXPANSION ZONE C                │
    │            (50x40 studs)                   │
    │                                            │
    │   ┌──────────────────────────────────┐    │
    │   │      GOLDEN LOBSTER SHRINE       │    │   ← Passive bonus income
    │   │           ✨ 🦞 ✨                │    │
    │   └──────────────────────────────────┘    │
    │                                            │
    │   ┌────────┐  ┌────────┐  ┌────────┐     │
    │   │PREMIUM │  │PREMIUM │  │PREMIUM │     │   ← Tier 4 Tanks (Rare)
    │   │TANK #8 │  │TANK #9 │  │TANK#10│     │
    │   └────────┘  └────────┘  └────────┘     │
    │                                            │
    │   ┌──────────────────────────────────┐    │
    │   │     PERSONAL TELEPORTER          │    │   ← Direct zone access
    │   └──────────────────────────────────┘    │
    │                                            │
    └────────────────────────────────────────────┘
```

### Full Expanded Tycoon (160x150 studs)
```
    OCEAN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  PRIVATE DOCK (Extended)
    ╔═══════════════════════════════════════════════════════════════════════════════╗
    ║                                                                               ║
    ║  ┌─────┐┌─────┐┌─────┐┌─────┐┌─────┐   ┌─────────────────────────────────┐  ║
    ║  │ T3  ││ T3  ││ T3  ││ T4  ││ T4  │   │    MEGA PROCESSING CENTER       │  ║
    ║  │     ││     ││     ││ ★   ││ ★   │   │  ┌────┐┌────┐┌────┐┌────┐     │  ║
    ║  └─────┘└─────┘└─────┘└─────┘└─────┘   │  │AUTO││AUTO││AUTO││SHIP │     │  ║
    ║                                         │  └────┘└────┘└────┘└────┘     │  ║
    ║  ┌─────┐┌─────┐┌─────┐┌─────┐┌─────┐   └─────────────────────────────────┘  ║
    ║  │ T1  ││ T1  ││ T2  ││ T2  ││ T2  │              ↓                         ║
    ║  │START││START││     ││     ││     │   ┌─────────────────────────────────┐  ║
    ║  └─────┘└─────┘└─────┘└─────┘└─────┘   │       MEGA COLLECTOR            │  ║
    ║     │      │      │      │      │      │    💰💰💰💰💰💰💰💰💰💰         │  ║
    ║     └──────┴──────┴──────┴──────┴─────►│         [$$$,$$$,$$$]           │  ║
    ║                                         └─────────────────────────────────┘  ║
    ║                                                                               ║
    ║  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────────────────┐  ║
    ║  │  BREEDING POND  │  │   INCUBATORS    │  │      GOLDEN SHRINE          │  ║
    ║  │   🦞 💕 🦞      │  │  [1][2][3][4]   │  │        ✨🦞✨               │  ║
    ║  └─────────────────┘  └─────────────────┘  └─────────────────────────────┘  ║
    ║                                                                               ║
    ║  ┌──────┐┌──────┐┌──────┐┌──────┐┌──────┐  ┌─────────────────────────────┐  ║
    ║  │DECO 1││DECO 2││DECO 3││DECO 4││DECO 5│  │   TYCOON HEADQUARTERS       │  ║
    ║  │  🪴  ││  🏆  ││  🎣  ││  🐚  ││  ⚓  │  │ ┌─────┐┌─────┐┌─────┐     │  ║
    ║  └──────┘└──────┘└──────┘└──────┘└──────┘  │ │UPGRD││STATS││REBTH│     │  ║
    ║                                             │ └─────┘└─────┘└─────┘     │  ║
    ║  ┌─────────────────┐  ┌─────────────────┐  │  [Personal Teleporter]      │  ║
    ║  │  FEEDING STN    │  │   AUTO-CLEAN    │  └─────────────────────────────┘  ║
    ║  │                 │  │                 │                                    ║
    ║  └─────────────────┘  └─────────────────┘                                    ║
    ║                                                                               ║
    ╚═══════════════════════════════════════════════════════════════════════════════╝
                                    ▼
                            [PORTAL TO HUB]
```

---

## Hub World

### Overview
Central meeting area for all players. Contains shops, NPCs, and teleporters to special zones. Designed as a seaside fishing village with a lighthouse centerpiece.

### Hub World Layout (300x300 studs)
```
                                          N
                                          ▲
    ════════════════════════════════════════════════════════════════════════════
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  OCEAN / HARBOR
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    ▓▓    ┌─────────┐                           ┌─────────┐    ▓▓
    ▓▓    │ FISHING │    ═══════════════════    │  BOAT   │    ▓▓
    ▓▓    │  PIER   │    ║    MAIN DOCK    ║    │ RENTAL  │    ▓▓
    ▓▓    └─────────┘    ═══════════════════    └─────────┘    ▓▓
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    ════════════════════════════════════════════════════════════════════════════
    ║                              │                              ║
    ║  ┌─────────────────────┐     │     ┌─────────────────────┐  ║
    ║  │   LOBSTER EMPORIUM  │     │     │    NEPTUNE'S        │  ║
    ║  │    (Main Shop)      │     │     │    UPGRADES         │  ║
    ║  │  ┌───┐ ┌───┐ ┌───┐ │     │     │  [Permanent Boosts] │  ║
    ║  │  │ 🦞│ │🪣 │ │🍴 │ │     │     │                     │  ║
    ║  │  │BUY│ │EQP│ │FED│ │     │     │  👤 Neptune (NPC)   │  ║
    ║  │  └───┘ └───┘ └───┘ │     │     └─────────────────────┘  ║
    ║  │  👤 Captain Claw   │     │                              ║
    ║  └─────────────────────┘     │     ┌─────────────────────┐  ║
    ║                              │     │   MYSTERY TRADER    │  ║
W ◄─║──────────────────────────────┼─────│   (Rotating Stock)  │──║─► E
    ║                              │     │  👤 Shady Shrimp    │  ║
    ║  ┌─────────────────────┐     │     └─────────────────────┘  ║
    ║  │    QUEST BOARD      │     │                              ║
    ║  │  ╔═══╦═══╦═══╦═══╗ │     │     ┌─────────────────────┐  ║
    ║  │  ║ Q1║ Q2║ Q3║ Q4║ │    ┌┴┐    │   GAMEPASS GROTTO   │  ║
    ║  │  ╚═══╩═══╩═══╩═══╝ │    │🗼│    │   (Premium Shop)    │  ║
    ║  │  👤 Harbor Master  │    │ │    │   👤 Pearl           │  ║
    ║  └─────────────────────┘    │L│    └─────────────────────┘  ║
    ║                             │I│                              ║
    ║  ══════════════════════     │G│     ══════════════════════  ║
    ║  ║ TELEPORTER PLAZA  ║     │H│     ║  LEADERBOARD WALL  ║  ║
    ║  ║                   ║     │T│     ║                    ║  ║
    ║  ║ ┌───┐ ┌───┐ ┌───┐║     │H│     ║ ┌──────────────┐  ║  ║
    ║  ║ │🌊 │ │🏁 │ │🧬 │║     │O│     ║ │ TOP TYCOONS  │  ║  ║
    ║  ║ │ABY│ │RAC│ │LAB│║     │U│     ║ │ 1. ████████  │  ║  ║
    ║  ║ └───┘ └───┘ └───┘║     │S│     ║ │ 2. ████████  │  ║  ║
    ║  ║ ┌───┐ ┌───┐      ║     │E│     ║ │ 3. ████████  │  ║  ║
    ║  ║ │👑 │ │⭐ │      ║     └┬┘     ║ └──────────────┘  ║  ║
    ║  ║ │CNC│ │PRS│      ║      │      ║                    ║  ║
    ║  ║ └───┘ └───┘      ║      │      ║ [Daily] [Weekly]   ║  ║
    ║  ══════════════════════     │      ══════════════════════  ║
    ║                             │                               ║
    ║  ┌───────────────────────────────────────────────────────┐  ║
    ║  │                   CENTRAL FOUNTAIN                    │  ║
    ║  │                    ┌─────────┐                        │  ║
    ║  │                    │ 🦞🌊🦞  │                        │  ║
    ║  │                    │FOUNTAIN │                        │  ║
    ║  │                    └─────────┘                        │  ║
    ║  │     🪑        [Wishing Well]         🪑              │  ║
    ║  └───────────────────────────────────────────────────────┘  ║
    ║                             │                               ║
    ║  ┌─────────────────┐        │        ┌─────────────────┐   ║
    ║  │  TRADING POST   │        │        │   PET CORNER    │   ║
    ║  │ [Player Market] │        │        │ 👤 Pet Master   │   ║
    ║  │  👤 Trader Tom  │        │        │   🐙 🦀 🐠      │   ║
    ║  └─────────────────┘        │        └─────────────────┘   ║
    ║                             │                               ║
    ╚═════════════════════════════╧═══════════════════════════════╝
                                  │
                                  ▼
                           [SPAWN POINT]
                                  S
```

### NPC Directory

| NPC Name | Location | Function | Interaction |
|----------|----------|----------|-------------|
| Captain Claw | Lobster Emporium | Main Shop | Buy lobsters, equipment, feed |
| Neptune | Neptune's Upgrades | Permanent boosts | Purchase passive upgrades |
| Shady Shrimp | Mystery Trader | Rotating rare items | Limited stock, premium items |
| Harbor Master | Quest Board | Daily/Weekly quests | Accept/complete quests |
| Pearl | Gamepass Grotto | Premium items | Robux purchases |
| Trader Tom | Trading Post | Player-to-player trading | List/buy player items |
| Pet Master | Pet Corner | Pet management | Buy/upgrade companion pets |

### Teleporter Destinations

| Portal | Icon | Destination | Unlock Requirement |
|--------|------|-------------|-------------------|
| ABY | 🌊 | The Abyss | Level 10 |
| RAC | 🏁 | Lobster Racing Arena | Level 5 |
| LAB | 🧬 | Breeding Laboratory | Level 15 |
| CNC | 👑 | Lobster Council | SECRET (100 Golden Lobsters) |
| PRS | ⭐ | Prestige Temple | First Rebirth |

---

## Special Zones

### 1. The Abyss (Deep Sea Secret Area)
**Unlock:** Level 10 | **Size:** 200x200 studs

A dark, bioluminescent underwater cavern with rare lobster species.

```
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    ▓              ~~~ DEEP OCEAN SURFACE ~~~                   ▓
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
                              │
                              ▼ [Descent Tube - Entrance]
    ╔═══════════════════════════════════════════════════════════════════╗
    ║                                                                   ║
    ║         ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░          ║
    ║      ░░░                                               ░░░       ║
    ║    ░░░    ┌──────────────────────────────────────┐       ░░░     ║
    ║   ░░      │         BIOLUMINESCENT GROTTO        │         ░░    ║
    ║  ░░       │   ✨        ✨        ✨        ✨   │          ░░   ║
    ║  ░░       │      🦞           🦞           🦞    │          ░░   ║
    ║ ░░        │   [Abyssal Lobster Spawns - RARE]    │           ░░  ║
    ║ ░░        └──────────────────────────────────────┘           ░░  ║
    ║ ░░                                                           ░░  ║
    ║  ░░    ┌──────────────┐              ┌──────────────┐      ░░   ║
    ║  ░░    │   ANCIENT    │              │    CORAL     │      ░░   ║
    ║   ░░   │   SHIPWRECK  │              │   GARDENS    │     ░░    ║
    ║    ░░  │  💰 Treasure │              │ 🌿 Special   │    ░░     ║
    ║     ░░ │    Chests    │              │    Feed      │   ░░      ║
    ║      ░░└──────────────┘              └──────────────┘ ░░        ║
    ║        ░░░                                       ░░░            ║
    ║           ░░░░░░                         ░░░░░░░                ║
    ║                 ░░░░░░░░░░░░░░░░░░░░░░░░░                       ║
    ║                                                                   ║
    ║    ┌────────────────────────────────────────────────────────┐   ║
    ║    │                   THE LEVIATHAN'S LAIR                  │   ║
    ║    │                                                         │   ║
    ║    │                    ┌─────────────┐                     │   ║
    ║    │                    │   🦞🦞🦞    │                     │   ║
    ║    │                    │   BOSS:     │                     │   ║
    ║    │                    │  LEVIATHAN  │                     │   ║
    ║    │                    │  LOBSTER    │                     │   ║
    ║    │                    └─────────────┘                     │   ║
    ║    │              [Weekly Boss - Legendary Drops]            │   ║
    ║    └────────────────────────────────────────────────────────┘   ║
    ║                                                                   ║
    ║   🔮 NPC: Oracle Octopus (Prophecies & Hints)                   ║
    ║                                                                   ║
    ╚═══════════════════════════════════════════════════════════════════╝
```

**Special Features:**
- Abyssal Lobster spawns (10x rarer than surface)
- Treasure chest hunting (5 hidden per server reset)
- Weekly boss: Leviathan Lobster
- Coral Gardens for special feed ingredients

---

### 2. Lobster Racing Arena
**Unlock:** Level 5 | **Size:** 250x150 studs

Competitive racing track where players race their trained lobsters.

```
    ╔══════════════════════════════════════════════════════════════════════════╗
    ║                      🏁 LOBSTER RACING ARENA 🏁                          ║
    ╠══════════════════════════════════════════════════════════════════════════╣
    ║                                                                          ║
    ║    ┌────────────────────────────────────────────────────────────────┐   ║
    ║    │                      SPECTATOR STANDS                          │   ║
    ║    │   [🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑]   │   ║
    ║    │   [🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑][🪑]   │   ║
    ║    └────────────────────────────────────────────────────────────────┘   ║
    ║                                                                          ║
    ║    ════════════════════════════════════════════════════════════════     ║
    ║         ╔═════╗                                           ╔═════╗       ║
    ║         ║START║                                           ║FINSH║       ║
    ║         ╚══╦══╝                                           ╚══╦══╝       ║
    ║    ┌───────╨─────────────────────────────────────────────────╨───────┐  ║
    ║    │ LANE 1  🦞➡️ ═══════════════════════════════════════════════ 🏆 │  ║
    ║    ├─────────────────────────────────────────────────────────────────┤  ║
    ║    │ LANE 2  🦞➡️ ══════🌊════════🪨═══════════🌊════════════════ 🏆 │  ║
    ║    ├─────────────────────────────────────────────────────────────────┤  ║
    ║    │ LANE 3  🦞➡️ ═══════════🪨════════════🌊════════════🪨══════ 🏆 │  ║
    ║    ├─────────────────────────────────────────────────────────────────┤  ║
    ║    │ LANE 4  🦞➡️ ════🌊═══════════🌊═════════════🌊═════════════ 🏆 │  ║
    ║    ├─────────────────────────────────────────────────────────────────┤  ║
    ║    │ LANE 5  🦞➡️ ══════════════════════════════════════════════ 🏆 │  ║
    ║    ├─────────────────────────────────────────────────────────────────┤  ║
    ║    │ LANE 6  🦞➡️ ═══🪨════════🪨═══════════🪨═══════════🪨══════ 🏆 │  ║
    ║    └─────────────────────────────────────────────────────────────────┘  ║
    ║          │                    OBSTACLES:                    │           ║
    ║          │                 🌊 = Water Current (+speed)      │           ║
    ║          │                 🪨 = Rock (-speed)               │           ║
    ║          └──────────────────────────────────────────────────┘           ║
    ║                                                                          ║
    ║    ┌─────────────────┐          ┌─────────────────┐                     ║
    ║    │  BETTING BOOTH  │          │   TROPHY CASE   │                     ║
    ║    │  👤 Bookie Bob  │          │  🏆🏆🏆🏆🏆    │                     ║
    ║    │   [Wager $$]    │          │  [View Records] │                     ║
    ║    └─────────────────┘          └─────────────────┘                     ║
    ║                                                                          ║
    ║    ┌─────────────────────────────────────────────────────────────────┐  ║
    ║    │                      TRAINING PADDOCK                           │  ║
    ║    │   ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐             │  ║
    ║    │   │SPEED │  │STAM  │  │AGIL  │  │LUCK  │  │OBST  │             │  ║
    ║    │   │TRAIN │  │TRAIN │  │TRAIN │  │TRAIN │  │TRAIN │             │  ║
    ║    │   └──────┘  └──────┘  └──────┘  └──────┘  └──────┘             │  ║
    ║    └─────────────────────────────────────────────────────────────────┘  ║
    ║                                                                          ║
    ║    👤 NPC: Racing Roy (Race Host)    👤 NPC: Coach Coral (Training)     ║
    ║                                                                          ║
    ╚══════════════════════════════════════════════════════════════════════════╝
```

**Race Types:**
| Race Type | Entry Fee | Prize Pool | Frequency |
|-----------|-----------|------------|-----------|
| Quick Sprint | $100 | 6x Entry | Every 3 min |
| Standard | $500 | 8x Entry | Every 10 min |
| Championship | $5,000 | 15x Entry + Trophy | Hourly |
| Grand Prix | $25,000 | 20x Entry + Exclusive | Daily |

---

### 3. Breeding Laboratory
**Unlock:** Level 15 | **Size:** 180x120 studs

Scientific facility for advanced lobster breeding and genetic experiments.

```
    ╔══════════════════════════════════════════════════════════════════════════╗
    ║                    🧬 BREEDING LABORATORY 🧬                             ║
    ╠══════════════════════════════════════════════════════════════════════════╣
    ║                                                                          ║
    ║    ┌───────────────────────────────────────────────────────────────┐    ║
    ║    │                       RECEPTION AREA                          │    ║
    ║    │   👤 Dr. Crust (Head Scientist)                               │    ║
    ║    │   [Welcome] [Tutorial] [Gene Guide]                           │    ║
    ║    └───────────────────────────────────────────────────────────────┘    ║
    ║                              │                                           ║
    ║         ┌────────────────────┼────────────────────┐                     ║
    ║         ▼                    ▼                    ▼                     ║
    ║    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐               ║
    ║    │  GENE TANK  │    │  GENE TANK  │    │  GENE TANK  │               ║
    ║    │     #1      │    │     #2      │    │     #3      │               ║
    ║    │   ╔═════╗   │    │   ╔═════╗   │    │   ╔═════╗   │               ║
    ║    │   ║ 🦞  ║   │    │   ║ 🦞  ║   │    │   ║ 🦞  ║   │               ║
    ║    │   ║  +  ║   │    │   ║  +  ║   │    │   ║  +  ║   │               ║
    ║    │   ║ 🦞  ║   │    │   ║ 🦞  ║   │    │   ║ 🦞  ║   │               ║
    ║    │   ╚═════╝   │    │   ╚═════╝   │    │   ╚═════╝   │               ║
    ║    │  [COMBINE]  │    │  [COMBINE]  │    │  [COMBINE]  │               ║
    ║    └─────────────┘    └─────────────┘    └─────────────┘               ║
    ║                                                                          ║
    ║    ┌───────────────────────────────────────────────────────────────┐    ║
    ║    │                    INCUBATION CHAMBER                          │    ║
    ║    │                                                                │    ║
    ║    │    🥚      🥚      🥚      🥚      🥚      🥚      🥚      🥚    │    ║
    ║    │   [1hr]   [1hr]   [2hr]   [4hr]   [4hr]   [8hr]   [12h]   [24h]│    ║
    ║    │                                                                │    ║
    ║    │   ┌─────────────────────────────────────────────────────┐    │    ║
    ║    │   │              ACCELERATOR (Robux/Coins)              │    │    ║
    ║    │   └─────────────────────────────────────────────────────┘    │    ║
    ║    └───────────────────────────────────────────────────────────────┘    ║
    ║                                                                          ║
    ║    ┌─────────────────────┐        ┌─────────────────────────────┐       ║
    ║    │   MUTATION MACHINE  │        │      GENE LIBRARY           │       ║
    ║    │                     │        │                             │       ║
    ║    │    ┌───────────┐   │        │  COMMON:    ▓▓▓▓▓▓▓▓▓░     │       ║
    ║    │    │    🧪     │   │        │  UNCOMMON:  ▓▓▓▓▓▓░░░░     │       ║
    ║    │    │   ????    │   │        │  RARE:      ▓▓▓▓░░░░░░     │       ║
    ║    │    │   🦞→❓   │   │        │  EPIC:      ▓▓░░░░░░░░     │       ║
    ║    │    └───────────┘   │        │  LEGENDARY: ▓░░░░░░░░░     │       ║
    ║    │   [Random Mutate]  │        │  MYTHIC:    ░░░░░░░░░░     │       ║
    ║    │   [Costs: 10 Genes]│        │                             │       ║
    ║    └─────────────────────┘        │  👤 Librarian Lana         │       ║
    ║                                   └─────────────────────────────┘       ║
    ║                                                                          ║
    ║    ┌───────────────────────────────────────────────────────────────┐    ║
    ║    │                     EXPERIMENT LOG                             │    ║
    ║    │   [Your Discoveries] [Community Discoveries] [Achievements]   │    ║
    ║    └───────────────────────────────────────────────────────────────┘    ║
    ║                                                                          ║
    ╚══════════════════════════════════════════════════════════════════════════╝
```

**Breeding Mechanics:**
- Combine two lobsters to create offspring with mixed traits
- Rarer parents = higher chance of rare offspring
- Mutation machine can create unique variants
- Genes collected from breeding can unlock special abilities

---

### 4. The Lobster Council Chamber (SECRET)
**Unlock:** Collect 100 Golden Lobsters (hidden achievement) | **Size:** 100x100 studs

Ancient underwater temple where the legendary Lobster Elders reside.

```
                        ⚠️ SECRET AREA - DO NOT SHARE ⚠️
    
    ╔══════════════════════════════════════════════════════════════╗
    ║              👑 THE LOBSTER COUNCIL CHAMBER 👑               ║
    ╠══════════════════════════════════════════════════════════════╣
    ║                                                              ║
    ║                    ✨ GOLDEN WATERFALL ✨                    ║
    ║                    ░░░░░░░░░░░░░░░░░░░                      ║
    ║                    ░░░░░░░░░░░░░░░░░░░                      ║
    ║                           │                                  ║
    ║                           ▼                                  ║
    ║         ┌─────────────────────────────────────┐             ║
    ║         │         ELDER'S POOL                │             ║
    ║         │                                     │             ║
    ║         │    🦞      🦞      🦞      🦞      │             ║
    ║         │   Elder   Elder   Elder   Elder    │             ║
    ║         │   Magnus  Aurelia Poseidon Coral   │             ║
    ║         │                                     │             ║
    ║         │        ┌─────────────┐             │             ║
    ║         │        │  PROPHECY   │             │             ║
    ║         │        │    STONE    │             │             ║
    ║         │        │     📜      │             │             ║
    ║         │        └─────────────┘             │             ║
    ║         └─────────────────────────────────────┘             ║
    ║                           │                                  ║
    ║              ┌────────────┴────────────┐                    ║
    ║              ▼                         ▼                    ║
    ║    ┌─────────────────┐       ┌─────────────────┐           ║
    ║    │  WISDOM SHRINE  │       │  BLESSING ALTAR │           ║
    ║    │                 │       │                 │           ║
    ║    │  +50% XP BUFF   │       │  GOLDEN TOUCH   │           ║
    ║    │  (24 hours)     │       │  +100% GOLD     │           ║
    ║    │                 │       │  (1 hour)       │           ║
    ║    └─────────────────┘       └─────────────────┘           ║
    ║                                                              ║
    ║    ┌───────────────────────────────────────────────────┐   ║
    ║    │                 COUNCIL VAULT                      │   ║
    ║    │                                                    │   ║
    ║    │   🗝️ Requires Council Key (1 per month drop)      │   ║
    ║    │                                                    │   ║
    ║    │   Rewards:                                         │   ║
    ║    │   • Exclusive "Council's Chosen" title             │   ║
    ║    │   • Mythic Lobster Egg                             │   ║
    ║    │   • 1,000,000 coins                                │   ║
    ║    │   • Unique decoration: Golden Throne               │   ║
    ║    │                                                    │   ║
    ║    └───────────────────────────────────────────────────┘   ║
    ║                                                              ║
    ║    🗝️ Hidden entrance back to Hub (behind waterfall)       ║
    ║                                                              ║
    ╚══════════════════════════════════════════════════════════════╝
```

**Council Elders:**
| Elder | Domain | Blessing | Dialogue Theme |
|-------|--------|----------|----------------|
| Magnus | Strength | +25% tank capacity | Ancient wisdom |
| Aurelia | Wealth | +15% sell price | Prosperity teachings |
| Poseidon | Ocean | Access to secret fishing spots | Sea legends |
| Coral | Nature | +30% breeding success | Life cycles |

---

### 5. Prestige Temple
**Unlock:** Complete first Rebirth | **Size:** 150x150 studs

Mystical temple for the rebirth/prestige system.

```
    ╔══════════════════════════════════════════════════════════════════════════╗
    ║                         ⭐ PRESTIGE TEMPLE ⭐                            ║
    ╠══════════════════════════════════════════════════════════════════════════╣
    ║                                                                          ║
    ║                           ┌─────────────┐                               ║
    ║                           │   ENTRANCE  │                               ║
    ║                           │  GUARDIAN   │                               ║
    ║                           │    👤🦞     │                               ║
    ║                           └──────┬──────┘                               ║
    ║                                  │                                       ║
    ║    ══════════════════════════════╧══════════════════════════════        ║
    ║                         PATH OF ASCENSION                                ║
    ║    ══════════════════════════════════════════════════════════════        ║
    ║         │              │              │              │                   ║
    ║         ▼              ▼              ▼              ▼                   ║
    ║    ┌─────────┐   ┌─────────┐   ┌─────────┐   ┌─────────┐               ║
    ║    │ SHRINE  │   │ SHRINE  │   │ SHRINE  │   │ SHRINE  │               ║
    ║    │   I     │   │   II    │   │   III   │   │   IV    │               ║
    ║    │         │   │         │   │         │   │         │               ║
    ║    │ Rebirth │   │ Rebirth │   │ Rebirth │   │ Rebirth │               ║
    ║    │  1-3    │   │  4-7    │   │  8-15   │   │  16+    │               ║
    ║    │         │   │         │   │         │   │         │               ║
    ║    │ +10%    │   │ +25%    │   │ +50%    │   │ +100%   │               ║
    ║    │ income  │   │ income  │   │ income  │   │ income  │               ║
    ║    └─────────┘   └─────────┘   └─────────┘   └─────────┘               ║
    ║                                                                          ║
    ║                    ┌─────────────────────────────┐                      ║
    ║                    │     CENTRAL SANCTUM         │                      ║
    ║                    │                             │                      ║
    ║                    │        ╔═══════════╗       │                      ║
    ║                    │        ║  REBIRTH  ║       │                      ║
    ║                    │        ║   ALTAR   ║       │                      ║
    ║                    │        ║    🌟     ║       │                      ║
    ║                    │        ╚═══════════╝       │                      ║
    ║                    │                             │                      ║
    ║                    │   [RESET PROGRESS]          │                      ║
    ║                    │   [GAIN PRESTIGE STARS]     │                      ║
    ║                    │   [UNLOCK PERMANENT BONUSES]│                      ║
    ║                    │                             │                      ║
    ║                    └─────────────────────────────┘                      ║
    ║                                                                          ║
    ║    ┌───────────────────┐              ┌───────────────────┐            ║
    ║    │  PRESTIGE SHOP    │              │  HALL OF LEGENDS  │            ║
    ║    │                   │              │                   │            ║
    ║    │  Spend ⭐ Stars   │              │  🏆 Top Prestigers │            ║
    ║    │  on exclusive:    │              │                   │            ║
    ║    │  • Skins          │              │  1. ████████ ⭐99  │            ║
    ║    │  • Perks          │              │  2. ████████ ⭐87  │            ║
    ║    │  • Titles         │              │  3. ████████ ⭐72  │            ║
    ║    │  • Auras          │              │                   │            ║
    ║    │                   │              │  [Your Rank: ##]  │            ║
    ║    │  👤 Star Keeper   │              │                   │            ║
    ║    └───────────────────┘              └───────────────────┘            ║
    ║                                                                          ║
    ║    ┌───────────────────────────────────────────────────────────────┐   ║
    ║    │                      PRESTIGE PERKS                            │   ║
    ║    │                                                                │   ║
    ║    │   ⭐ 1: Start with $1,000      ⭐ 5: Auto-Collector Tier 1     │   ║
    ║    │   ⭐ 2: +1 Tank Slot           ⭐ 10: Exclusive Aura           │   ║
    ║    │   ⭐ 3: 10% Faster Breeding    ⭐ 15: Golden Lobster Chance +  │   ║
    ║    │   ⭐ 4: VIP Racing Lane        ⭐ 20: MYTHIC Starter Lobster   │   ║
    ║    │                                                                │   ║
    ║    └───────────────────────────────────────────────────────────────┘   ║
    ║                                                                          ║
    ╚══════════════════════════════════════════════════════════════════════════╝
```

**Prestige Progression:**
| Rebirth # | Stars Earned | Requirement |
|-----------|--------------|-------------|
| 1 | 1 ⭐ | $100,000 + Level 20 |
| 2 | 1 ⭐ | $250,000 + Level 20 |
| 3 | 2 ⭐ | $500,000 + Level 25 |
| 5 | 3 ⭐ | $1,000,000 + Level 30 |
| 10 | 5 ⭐ | $5,000,000 + Level 40 |
| 20 | 10 ⭐ | $25,000,000 + Level 50 |

---

## Technical Layout

### Part Count Recommendations

| Zone | Target Parts | Max Parts | Streaming Priority |
|------|--------------|-----------|-------------------|
| **Player Tycoon (Base)** | 800 | 1,200 | High |
| **Player Tycoon (Expanded)** | 1,500 | 2,000 | High |
| **Hub World** | 3,000 | 4,500 | Medium |
| **The Abyss** | 2,000 | 3,000 | Low |
| **Racing Arena** | 1,800 | 2,500 | Medium |
| **Breeding Lab** | 1,200 | 1,800 | Low |
| **Council Chamber** | 600 | 900 | Low |
| **Prestige Temple** | 1,000 | 1,500 | Low |

**Total Server Budget:** ~15,000 parts loaded at any time

### Streaming Enabled Configuration

```lua
-- StreamingEnabled Settings
workspace.StreamingEnabled = true
workspace.StreamingMinRadius = 64      -- Minimum render distance
workspace.StreamingTargetRadius = 256  -- Target render distance
workspace.StreamingPauseMode = Enum.StreamingPauseMode.ClientPhysicsPause

-- Zone Streaming Priorities
STREAMING_CONFIG = {
    PlayerTycoon = {
        ModelStreamingBehavior = Enum.ModelStreamingBehavior.Improved,
        LevelOfDetail = Enum.ModelLevelOfDetail.StreamingMesh
    },
    HubWorld = {
        ModelStreamingBehavior = Enum.ModelStreamingBehavior.Default,
        LevelOfDetail = Enum.ModelLevelOfDetail.Automatic
    },
    SpecialZones = {
        ModelStreamingBehavior = Enum.ModelStreamingBehavior.Atomic,
        LevelOfDetail = Enum.ModelLevelOfDetail.Automatic
    }
}
```

### Spawn Points

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           SPAWN POINT LAYOUT                                │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  PRIMARY SPAWNS (New Players):                                              │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │  Hub World - Central Fountain Area                                  │   │
│  │  Coordinates: (0, 5, -50)                                           │   │
│  │  Orientation: Facing North (toward dock)                            │   │
│  │  Spawn Count: 20 spawn points in circle pattern                     │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
│  TYCOON SPAWNS (Entering Personal Base):                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │  Each Tycoon - South Entrance Portal                                │   │
│  │  Relative Position: (0, 3, 45) from tycoon origin                   │   │
│  │  Orientation: Facing North (into tycoon)                            │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
│  ZONE SPAWNS:                                                               │
│  ┌──────────────────┬──────────────────────────────────────────────────┐   │
│  │ The Abyss        │ Top of descent tube (0, 100, 0)                  │   │
│  │ Racing Arena     │ Spectator area entrance (0, 5, 70)               │   │
│  │ Breeding Lab     │ Reception desk (0, 3, 55)                        │   │
│  │ Council Chamber  │ Waterfall entrance (0, 10, 45)                   │   │
│  │ Prestige Temple  │ Path of Ascension start (0, 5, 70)               │   │
│  └──────────────────┴──────────────────────────────────────────────────┘   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### Lighting Configuration

```lua
LIGHTING_PRESETS = {
    
    HubWorld = {
        Ambient = Color3.fromRGB(150, 170, 200),    -- Soft blue coastal
        Brightness = 2,
        ColorShift_Bottom = Color3.fromRGB(180, 200, 220),
        ColorShift_Top = Color3.fromRGB(200, 220, 255),
        EnvironmentDiffuseScale = 1,
        EnvironmentSpecularScale = 1,
        GlobalShadows = true,
        OutdoorAmbient = Color3.fromRGB(150, 180, 200),
        ClockTime = 14,                              -- 2 PM sunny
        GeographicLatitude = 35,
        
        -- Atmosphere
        Atmosphere = {
            Density = 0.3,
            Offset = 0.25,
            Color = Color3.fromRGB(199, 216, 252),
            Decay = Color3.fromRGB(92, 120, 175),
            Glare = 0.2,
            Haze = 1.5
        },
        
        -- Post Processing
        Bloom = { Intensity = 0.5, Size = 24, Threshold = 0.9 },
        ColorCorrection = { Brightness = 0.05, Contrast = 0.1, Saturation = 0.1 }
    },
    
    TheAbyss = {
        Ambient = Color3.fromRGB(10, 20, 40),       -- Deep dark blue
        Brightness = 0.3,
        ClockTime = 0,                              -- Midnight
        GlobalShadows = false,
        
        Atmosphere = {
            Density = 0.8,
            Color = Color3.fromRGB(20, 40, 80),
            Haze = 10
        },
        
        -- Bioluminescent effects via PointLights on creatures
        Bloom = { Intensity = 1.2, Size = 40, Threshold = 0.5 },
        ColorCorrection = { Brightness = -0.1, Contrast = 0.3, Saturation = -0.2 }
    },
    
    RacingArena = {
        Ambient = Color3.fromRGB(180, 180, 200),
        Brightness = 2.5,
        ClockTime = 12,                             -- High noon for visibility
        GlobalShadows = true,
        
        Atmosphere = {
            Density = 0.2,
            Glare = 0.4,
            Haze = 0.5
        },
        
        Bloom = { Intensity = 0.3, Size = 20, Threshold = 1 },
        ColorCorrection = { Brightness = 0.1, Contrast = 0.15, Saturation = 0.2 }
    },
    
    BreedingLab = {
        Ambient = Color3.fromRGB(200, 220, 200),    -- Clinical green-white
        Brightness = 3,
        ClockTime = 12,
        GlobalShadows = false,                      -- Indoor, use fixtures
        
        ColorCorrection = { Brightness = 0.15, Contrast = 0, Saturation = -0.1 }
    },
    
    CouncilChamber = {
        Ambient = Color3.fromRGB(255, 215, 100),    -- Golden glow
        Brightness = 1.5,
        ClockTime = 18,                             -- Golden hour
        GlobalShadows = true,
        
        Atmosphere = {
            Density = 0.4,
            Color = Color3.fromRGB(255, 200, 100),
            Haze = 3
        },
        
        Bloom = { Intensity = 1, Size = 35, Threshold = 0.6 },
        ColorCorrection = { Brightness = 0.1, Contrast = 0.05, Saturation = 0.15 }
    },
    
    PrestigeTemple = {
        Ambient = Color3.fromRGB(180, 150, 255),    -- Mystical purple
        Brightness = 1.8,
        ClockTime = 6,                              -- Dawn/mystical
        GlobalShadows = true,
        
        Atmosphere = {
            Density = 0.5,
            Color = Color3.fromRGB(200, 180, 255),
            Decay = Color3.fromRGB(150, 100, 200),
            Haze = 2
        },
        
        Bloom = { Intensity = 0.8, Size = 30, Threshold = 0.7 },
        ColorCorrection = { Brightness = 0, Contrast = 0.1, Saturation = 0.05 }
    },
    
    PlayerTycoon = {
        -- Inherits from HubWorld with slight variations
        -- Slightly warmer to feel "homey"
        Ambient = Color3.fromRGB(160, 170, 190),
        Brightness = 2.2,
        ClockTime = 15,                             -- 3 PM pleasant
        
        ColorCorrection = { Brightness = 0.08, Contrast = 0.05, Saturation = 0.15 }
    }
}
```

### Zone Transition Diagram

```
                                ┌─────────────────────────────────────┐
                                │            GAME START               │
                                └─────────────────┬───────────────────┘
                                                  │
                                                  ▼
                                      ┌───────────────────┐
                                      │     HUB WORLD     │
                                      │   (Main Spawn)    │
                                      └─────────┬─────────┘
                                                │
                    ┌───────────────────────────┼───────────────────────────┐
                    │                           │                           │
                    ▼                           ▼                           ▼
        ┌───────────────────┐       ┌───────────────────┐       ┌───────────────────┐
        │   PLAYER TYCOON   │       │ TELEPORTER PLAZA  │       │   DIRECT ACCESS   │
        │  (Portal South)   │       │                   │       │  (If unlocked)    │
        └─────────┬─────────┘       │  ┌─────────────┐  │       └───────────────────┘
                  │                 │  │   SELECT    │  │
                  │                 │  │ DESTINATION │  │
                  ▼                 │  └──────┬──────┘  │
        ┌───────────────────┐       │         │         │
        │  BUILD & MANAGE   │       │    ┌────┴────┐    │
        │                   │       │    │ UNLOCK  │    │
        │  [Expansion A]────┼───────┼───►│ CHECK   │    │
        │  [Expansion B]────┼───────┼───►│         │    │
        │  [Expansion C]────┼───────┼───►└────┬────┘    │
        │                   │       │         │         │
        │  [Return to Hub]──┼───────┼─────────┘         │
        └───────────────────┘       │                   │
                                    │   ┌───────────────┴───────────────┐
                                    │   │                               │
                        ┌───────────┴───┴───┐                           │
                        │                   │                           │
            ┌───────────▼───────┐ ┌─────────▼─────────┐                 │
            │    THE ABYSS      │ │  RACING ARENA     │                 │
            │   (Level 10+)     │ │   (Level 5+)      │                 │
            │                   │ │                   │                 │
            │ • Rare Lobsters   │ │ • Race Lobbies    │                 │
            │ • Boss Fights     │ │ • Training        │                 │
            │ • Treasure Hunt   │ │ • Betting         │                 │
            └───────────────────┘ └───────────────────┘                 │
                                                                        │
            ┌───────────────────┐ ┌───────────────────┐                 │
            │  BREEDING LAB     │ │ PRESTIGE TEMPLE   │◄────────────────┤
            │   (Level 15+)     │ │  (Rebirth 1+)     │                 │
            │                   │ │                   │                 │
            │ • Gene Tanks      │ │ • Rebirth Altar   │                 │
            │ • Incubation      │ │ • Perk Shop       │                 │
            │ • Mutations       │ │ • Leaderboard     │                 │
            └───────────────────┘ └───────────────────┘                 │
                                                                        │
                                  ┌───────────────────┐                 │
                                  │  LOBSTER COUNCIL  │◄────────────────┘
                                  │    (SECRET)       │
                                  │ (100 Gold Lobsters│
                                  │                   │
                                  │ • Elder Blessings │
                                  │ • Exclusive Loot  │
                                  │ • Hidden Lore     │
                                  └───────────────────┘
```

---

## Appendix: Quick Reference Card

```
╔═══════════════════════════════════════════════════════════════════════════════╗
║                     LOBSTER TYCOON - WORLD QUICK REFERENCE                   ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║                                                                               ║
║  SCALE: 1 stud = 0.28 meters | 1 character in ASCII = 2 studs               ║
║                                                                               ║
║  ZONES OVERVIEW:                                                              ║
║  ┌──────────────────┬──────────────┬──────────┬────────────┬──────────────┐ ║
║  │ Zone             │ Size (studs) │ Parts    │ Unlock     │ Players      │ ║
║  ├──────────────────┼──────────────┼──────────┼────────────┼──────────────┤ ║
║  │ Tycoon (Base)    │ 80 x 100     │ 800      │ Start      │ 1 (Instanced)│ ║
║  │ Tycoon (Full)    │ 160 x 150    │ 1,500    │ $100K      │ 1 (Instanced)│ ║
║  │ Hub World        │ 300 x 300    │ 3,000    │ Start      │ 20 (Shared)  │ ║
║  │ The Abyss        │ 200 x 200    │ 2,000    │ Level 10   │ 20 (Shared)  │ ║
║  │ Racing Arena     │ 250 x 150    │ 1,800    │ Level 5    │ 20 (Shared)  │ ║
║  │ Breeding Lab     │ 180 x 120    │ 1,200    │ Level 15   │ 20 (Shared)  │ ║
║  │ Council Chamber  │ 100 x 100    │ 600      │ 100 Gold 🦞│ 20 (Shared)  │ ║
║  │ Prestige Temple  │ 150 x 150    │ 1,000    │ Rebirth 1  │ 20 (Shared)  │ ║
║  └──────────────────┴──────────────┴──────────┴────────────┴──────────────┘ ║
║                                                                               ║
║  KEY NPCs:                                                                    ║
║  • Captain Claw (Shop)     • Neptune (Upgrades)    • Harbor Master (Quests) ║
║  • Shady Shrimp (Mystery)  • Pearl (Gamepass)      • Dr. Crust (Breeding)   ║
║  • Racing Roy (Races)      • Star Keeper (Prestige)• Council Elders (Secret)║
║                                                                               ║
║  TELEPORTER CODES:                                                            ║
║  ABY = Abyss | RAC = Racing | LAB = Breeding | CNC = Council | PRS = Prestige║
║                                                                               ║
║  LIGHTING THEMES:                                                             ║
║  Hub = Sunny Coastal | Abyss = Dark Bioluminescent | Arena = Bright Stadium ║
║  Lab = Clinical White | Council = Golden Mystical | Temple = Purple Ethereal ║
║                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════╝
```

---

*Document Version: 1.0*  
*Last Updated: World Design Phase*  
*Author: World Designer*  
*Project: Lobster Tycoon (Roblox)*
