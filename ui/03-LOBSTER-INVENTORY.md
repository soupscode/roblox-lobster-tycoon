# 🦞 Lobster Inventory - Lobster Tycoon

## Overview
The Lobster Inventory is where players view their collection, check stats, breed lobsters, and manage their crustacean empire. It's a mix of Pokédex and collection album with breeding mechanics.

---

## ASCII Mockup

```
╔═══════════════════════════════════════════════════════════════════╗
║                    🦞 MY LOBSTER COLLECTION 🦞                    ║
║                                                                   ║
║  [ALL] [COMMON] [RARE] [EPIC] [LEGENDARY] [CURSED]     🔍 Search ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║  Total: 142/200     💰 Value: $45,000     Sort: [Rarity ▼]       ║
║                                                                   ║
║  ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗        ║
║  ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ ✨ ║ ║ 💎 ║ ║ 👑 ║ ║ ☠️  ║        ║
║  ║    ║ ║    ║ ║    ║ ║    ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║        ║
║  ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣        ║
║  ║Cmmn║ ║Cmmn║ ║Rare║ ║Epic║ ║Epic║ ║Lgnd║ ║Myth║ ║Crsd║        ║
║  ║ x8 ║ ║ x12║ ║ x3 ║ ║ x2 ║ ║ x4 ║ ║ x1 ║ ║ x1 ║ ║ x1 ║        ║
║  ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝        ║
║                                                                   ║
║  ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗ ╔════╗        ║
║  ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ 🦞 ║ ║ ??? ║ ║ ??? ║        ║
║  ║    ║ ║    ║ ║    ║ ║    ║ ║    ║ ║    ║ ║    ║ ║    ║        ║
║  ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣ ╠════╣        ║
║  ║Cmmn║ ║Uncm║ ║Uncm║ ║Rare║ ║Rare║ ║Rare║ ║ ?  ║ ║ ?  ║        ║
║  ║ x5 ║ ║ x7 ║ ║ x3 ║ ║ x2 ║ ║ x6 ║ ║ x1 ║ ║    ║ ║    ║        ║
║  ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝ ╚════╝        ║
║                                                                   ║
║  [Scroll for more...]                                            ║
║                                                                   ║
║  ┌────────────────────────────────────────────────────────────┐  ║
║  │  SELECTED: GOLDEN LOBSTER (Legendary)              [✖ Sell] │  ║
║  │  ─────────────────────────────────────────────────────────  │  ║
║  │  ┌──────────┐  💰 Value: $5,000                             │  ║
║  │  │          │  ⚡ Multiplier: x1.5                           │  ║
║  │  │   👑🦞   │  🎲 Drop Rate: 0.1%                            │  ║
║  │  │          │  🌟 Special: Glows in the dark                 │  ║
║  │  └──────────┘  📊 Stats:                                     │  ║
║  │                   Size: ████████░░ 8/10                      │  ║
║  │                   Speed: ██████░░░░ 6/10                     │  ║
║  │                   Charisma: ██████████ 10/10                 │  ║
║  │                                                               │  ║
║  │  [🥚 BREED]  [📤 TRANSFER]  [🗑️ RELEASE]                    │  ║
║  └────────────────────────────────────────────────────────────┘  ║
║                                                                   ║
║  🥚 BREEDING LAB         [ENTER]                                 ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

---

## Detailed Layout Specifications

### Header
**Height**: 80px  
**Background**: Gradient `#0A2463` → `#3BCEAC`  
**Title**: "🦞 MY LOBSTER COLLECTION 🦞"
- Font: Fredoka One, 32pt, `#FFF8F0`

---

### Filter Bar
**Position**: Below header  
**Height**: 60px  
**Background**: `#A7E6FF`

**Filter Tabs**:
- ALL (show all)
- COMMON (`#A8A8A8`)
- RARE (`#2196F3`)
- EPIC (`#9C27B0`)
- LEGENDARY (`#FFD700`)
- CURSED (`#39FF14`)

Each tab:
- Width: Auto
- Padding: 12px 20px
- Font: Poppins Bold, 14pt
- Active: Underline + glow
- Click: Filter grid to show only that rarity

**Search Box** (Right side):
- Input field, 200px width
- Icon: 🔍
- Placeholder: "Search lobsters..."

---

### Stats Summary Bar
**Position**: Below filters  
**Height**: 50px  
**Background**: `#0A2463` with 80% opacity

**Left Side**:
- "Total: 142/200" (current/max capacity)
- Font: Poppins Bold, 16pt, `#FFF8F0`

**Center**:
- "💰 Value: $45,000" (total collection value)
- Font: Poppins Bold, 16pt, `#FFD700`

**Right Side**:
- "Sort:" dropdown
  - By Rarity (default)
  - By Value
  - By Name (A-Z)
  - By Date Caught
  - By Stats

---

### Lobster Grid
**Layout**: 8 columns on desktop, 4 on tablet, 2 on mobile  
**Spacing**: 16px between cells  
**Scroll**: Vertical, smooth scroll

---

### Lobster Cell Specifications

#### Cell Container
- **Size**: 100px × 140px
- **Background**: Gradient based on rarity
  - Common: `#E0E0E0` → `#C0C0C0`
  - Uncommon: `#C8E6C9` → `#A5D6A7`
  - Rare: `#BBDEFB` → `#90CAF9`
  - Epic: `#E1BEE7` → `#CE93D8`
  - Legendary: `#FFF9C4` → `#FFF59D`
  - Mythic: Animated gradient rainbow
  - Cursed: `#39FF14` → `#00FF00` with glitch effect
- **Border**: 3px, rounded 12px
  - Border color matches rarity
- **Shadow**: 0 4px 8px rgba(0,0,0,0.3)

#### Cell Sections:

##### 1. Icon Area (Top)
- **Height**: 80px
- **Icon**: Lobster illustration (64×64px)
- **Animation**: 
  - Idle: Slight bob/rotate
  - Legendary+: Particle effects
  - Cursed: Glitch/distortion effect

**Rarity Indicator**:
- Small badge in top-right corner
- Shows rarity symbol (✨💎👑☠️)

##### 2. Info Area (Bottom)
- **Height**: 60px
- **Rarity Name**: 4-character abbreviation
  - "Cmmn", "Uncm", "Rare", "Epic", "Lgnd", "Myth", "Crsd"
- Font: Poppins Bold, 11pt
- **Quantity**: "x8" below name
  - Font: Poppins Regular, 10pt
  - Only show if player owns multiple

##### 3. Locked/Unknown State
- **Icon**: "???" silhouette
- **Background**: Grayscale, desaturated
- **Border**: Dashed, `#8B7355`
- **Hover**: Hint text "Catch to discover!"

---

### Selection Details Panel

**Position**: Bottom of screen, above breeding button  
**Height**: Expands when lobster selected (200px)  
**Background**: `#F5E6D3` with border `#FF4757`

**Layout**: Two columns

#### Left Column: Lobster Display
- **Size**: 150×150px
- **Live Preview**: Animated lobster
- **Background**: Rarity-colored gradient
- **Border**: Rounded, glowing

#### Right Column: Stats & Info

**Name & Rarity**:
- Font: Fredoka One, 24pt
- Color coded by rarity

**Stats Display**:
```
💰 Value: $5,000
⚡ Multiplier: x1.5
🎲 Drop Rate: 0.1%
🌟 Special: Glows in the dark
```

**Stat Bars**:
- Size: Progress bar (0-10)
- Speed: Progress bar (0-10)
- Charisma: Progress bar (0-10)
- Colors: `#3BCEAC` fill, `#8B7355` background

**Action Buttons** (Bottom):
1. **🥚 BREED** - Open breeding interface
2. **📤 TRANSFER** - Send to another player (if trading enabled)
3. **🗑️ RELEASE** - Sell/release lobster for money
4. **✖ SELL** - Top right, quick sell button

---

### Breeding Lab Section

**Position**: Bottom of screen  
**Height**: 60px (collapsed), 400px (expanded)  
**Background**: `#9B59B6` with animated bubbles

**Collapsed State**:
- "🥚 BREEDING LAB" text
- "[ENTER]" button
- Click to expand

**Expanded State**:
```
╔═══════════════════════════════════════════════════════════════════╗
║                        🥚 BREEDING LAB 🥚                         ║
║                                                                   ║
║  Select two lobsters to breed:                                   ║
║                                                                   ║
║  ┌──────────────┐     +     ┌──────────────┐    =    ┌────────┐ ║
║  │   PARENT 1   │           │   PARENT 2   │         │  EGG   │ ║
║  │              │           │              │         │   ?    │ ║
║  │   [SELECT]   │           │   [SELECT]   │         │        │ ║
║  │              │           │              │         │ 🥚🥚🥚 │ ║
║  │ Common       │           │ Rare         │         └────────┘ ║
║  └──────────────┘           └──────────────┘                     ║
║                                                                   ║
║  Possible Results:                                               ║
║  • 50% Uncommon                                                  ║
║  • 30% Rare                                                      ║
║  • 15% Epic                                                      ║
║  • 5% LEGENDARY! 🌟                                              ║
║                                                                   ║
║  Cost: $10,000          Time: 5 minutes                          ║
║                                                                   ║
║  [💰 BREED NOW]           [⭐ INSTANT HATCH - 50⭐]              ║
╚═══════════════════════════════════════════════════════════════════╝
```

**Breeding Panel Features**:
- Two selection slots for parent lobsters
- Visual preview of both parents
- Probability display for offspring
- Cost & time display
- Two options:
  - Normal breeding (costs money, takes time)
  - Instant hatch (premium currency)

**Breeding Animation**:
- Hearts float between parents
- Egg appears with shake animation
- Countdown timer if not instant
- Hatch animation when ready (egg cracks, reveal lobster)

---

## Color Scheme

| Element | Color | Hex |
|---------|-------|-----|
| Background | Deep Ocean | `#0A2463` |
| Filter Bar | Bubble Blue | `#A7E6FF` |
| Selection Panel | Beach Sand | `#F5E6D3` |
| Breeding Lab | Purple Starfish | `#9B59B6` |
| Common Border | Gray | `#A8A8A8` |
| Uncommon Border | Green | `#4CAF50` |
| Rare Border | Blue | `#2196F3` |
| Epic Border | Purple | `#9C27B0` |
| Legendary Border | Gold | `#FFD700` |
| Mythic Border | Animated Rainbow | N/A |
| Cursed Border | Toxic Green | `#39FF14` |

---

## Fonts

- **Titles**: Fredoka One
- **Lobster Names**: Fredoka One
- **Stats/Info**: Poppins Regular
- **Buttons**: Poppins Bold

---

## Animations

### Cell Animations

**Idle**:
- Lobster icon bobs gently (2px, 2s cycle)
- Legendary+: Sparkle particles around border
- Mythic: Rainbow gradient shift
- Cursed: Random glitch flicker (1% chance per frame)

**Hover**:
- Scale 1.1x (0.2s)
- Border glow intensifies
- Lobster icon scales 1.15x
- Tooltip appears with quick stats

**Click (Select)**:
- Flash white
- Scale to 1.2x then back
- Selection panel slides up from bottom (0.4s)
- Highlight cell with pulsing border

### New Lobster Caught:
- Empty cell transforms from "???" to new lobster
- Fade in + scale from 0 to 1.2x to 1.0x
- Particle burst matching rarity
- Sound: Splash + rarity-specific chime
- Popup: "NEW LOBSTER DISCOVERED!"

### Breeding Sequence:
1. **Selection**: Both parents pulse with hearts
2. **Start**: Hearts float between them (2s)
3. **Egg Appears**: Egg falls from top, bounces into center
4. **Countdown**: Timer ticks down (or skip with premium)
5. **Hatch**: Egg shakes violently → cracks → BURST
6. **Reveal**: Baby lobster appears with fanfare
7. **Add to Collection**: Flies to grid, fills empty slot

### Selling/Releasing:
- Lobster fades out with particle trail
- Money counter updates with "+$XXX" float
- Sound: Cash register + splash
- Confirmation: "Sold Golden Lobster for $5,000!"

---

## Rarity-Specific Details

### Common Lobsters
- **Color**: Gray/Brown tones
- **Names**: Basic (Red Lobster, Blue Lobster)
- **Effects**: None
- **Drop Rate**: 70%

### Uncommon Lobsters
- **Color**: Green tones
- **Names**: Slightly fancy (Emerald Crawler, Jade Pincher)
- **Effects**: Slight shimmer
- **Drop Rate**: 20%

### Rare Lobsters
- **Color**: Blue/Cyan tones
- **Names**: Cool names (Sapphire Snapper, Ocean's Pride)
- **Effects**: Glow outline
- **Drop Rate**: 7%

### Epic Lobsters
- **Color**: Purple/Pink tones
- **Names**: Majestic (Violet Sovereign, Amethyst King)
- **Effects**: Particle trail
- **Drop Rate**: 2%

### Legendary Lobsters
- **Color**: Gold/Yellow tones
- **Names**: Legendary (Golden God, Sun Crusher)
- **Effects**: Constant glow + sparkles
- **Drop Rate**: 0.9%

### Mythic Lobsters
- **Color**: Rainbow/Multi-color
- **Names**: Mythical (Cosmic Lobster, Astral Claw)
- **Effects**: Rainbow aura + stars
- **Drop Rate**: 0.09%

### Cursed Lobsters
- **Color**: Toxic green + glitch
- **Names**: Unhinged (VOID LOBSTER, G̴L̴I̴T̴C̴H̴ ̴C̴L̴A̴W̴)
- **Effects**: Reality distortion, screen shake
- **Drop Rate**: 0.01% (1 in 10,000)
- **Special**: Breaks the fourth wall

---

## Mobile Considerations

### Layout Changes:
- Grid reduces to 2-3 columns
- Selection panel becomes full-screen modal
- Breeding lab: Full screen when opened
- Cells: 80×120px minimum

### Touch Interactions:
- Tap to select (no hover state)
- Long-press for quick actions menu
- Swipe between filter tabs
- Pinch-to-zoom on selected lobster

### Performance:
- Limit visible cells (virtual scrolling)
- Reduce particle effects
- Simplify animations on low-end devices

---

## Special Features

### Collection Progress Tracker
- "Lobsterdex" progress bar at top
- "Caught: 45/100 unique species"
- Completion rewards at milestones

### Sorting & Filters
- Multiple sort options
- Quick filters: "Show Duplicates", "Show Tradeable", "Show Breedable"
- Search by name, rarity, stats

### Trading System (Future)
- "Trade" button in selection panel
- Send trade request to friends
- Trade history log

### Achievements
- "Catch 100 lobsters"
- "Breed a Legendary"
- "Own 10 of the same type"
- "Collect all Cursed lobsters"

---

## Accessibility

- **Keyboard Navigation**: Arrow keys to navigate grid, Enter to select
- **Screen Reader**: Announce rarity, stats, quantity
- **Colorblind Mode**: Use icons + text labels, not just colors
- **Reduced Motion**: Disable particle effects

---

## Implementation Notes

### Data Structure (Lobster):
```json
{
  "id": "golden_lobster",
  "name": "Golden Lobster",
  "rarity": "legendary",
  "stats": {
    "size": 8,
    "speed": 6,
    "charisma": 10
  },
  "value": 5000,
  "multiplier": 1.5,
  "dropRate": 0.001,
  "special": "Glows in the dark",
  "quantity": 1,
  "caught_date": 1703275200,
  "breedable": true
}
```

### Breeding Logic:
- Calculate offspring rarity based on parent rarities
- Higher rarity parents = better chance of rare offspring
- Rare chance for "mutation" (jump multiple rarities)
- Cursed lobsters have special breeding rules (unpredictable)

