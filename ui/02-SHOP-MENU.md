# 🏪 Shop Menu - Lobster Tycoon

## Overview
The Shop is where players spend their hard-earned lobster money on tanks, upgrades, decorations, and various chaos. It's organized into tabs with visual previews and clear pricing.

---

## ASCII Mockup

```
╔═══════════════════════════════════════════════════════════════════╗
║                        🦞 LOBSTER SHOP 🦞                         ║
║                          [X] Close                                ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║  [TANKS]  [UPGRADES]  [DECORATIONS]  [SPECIAL]  [PREMIUM]        ║
║  ▔▔▔▔▔▔                                                           ║
║                                                                   ║
║  ┌──────────────────────────────────────────────────────────┐    ║
║  │  🔍 Search...                            [💵] [🦞] [⭐]  │    ║
║  └──────────────────────────────────────────────────────────┘    ║
║                                                                   ║
║  ╔═════════════════╗  ╔═════════════════╗  ╔═════════════════╗  ║
║  ║                 ║  ║                 ║  ║                 ║  ║
║  ║   [TANK ICON]   ║  ║   [TANK ICON]   ║  ║   [TANK ICON]   ║  ║
║  ║    🪣 → 🪣🪣    ║  ║    🏊 → 🏊🏊    ║  ║    🌊 → 🌊🌊    ║  ║
║  ║                 ║  ║                 ║  ║     LOCKED      ║  ║
║  ╠═════════════════╣  ╠═════════════════╣  ╠═════════════════╣  ║
║  ║ SMALL TANK      ║  ║ MEDIUM TANK     ║  ║ OCEAN TANK      ║  ║
║  ║ ─────────────── ║  ║ ─────────────── ║  ║ ─────────────── ║  ║
║  ║ 🦞 +5 capacity  ║  ║ 🦞 +25 capacity ║  ║ 🦞 +100 capacity║  ║
║  ║ 💵 +$10/sec     ║  ║ 💵 +$50/sec     ║  ║ 💵 +$500/sec    ║  ║
║  ║                 ║  ║                 ║  ║                 ║  ║
║  ║  [ $500 ] BUY   ║  ║  [ $5,000 ] BUY ║  ║ Requires Lvl 10 ║  ║
║  ║    OWNED: 3     ║  ║    OWNED: 1     ║  ║                 ║  ║
║  ╚═════════════════╝  ╚═════════════════╝  ╚═════════════════╝  ║
║                                                                   ║
║  ╔═════════════════╗  ╔═════════════════╗  ╔═════════════════╗  ║
║  ║                 ║  ║                 ║  ║                 ║  ║
║  ║   [TANK ICON]   ║  ║   [TANK ICON]   ║  ║   [TANK ICON]   ║  ║
║  ║    🏛️ → 🏛️🏛️    ║  ║    👑 → 👑👑    ║  ║    🌌 → 🌌🌌    ║  ║
║  ║                 ║  ║                 ║  ║   [ANIMATED]    ║  ║
║  ╠═════════════════╣  ╠═════════════════╣  ╠═════════════════╣  ║
║  ║ AQUARIUM DELUXE ║  ║ ROYAL LAGOON    ║  ║ VOID ABYSS      ║  ║
║  ║ ─────────────── ║  ║ ─────────────── ║  ║ ─────────────── ║  ║
║  ║ 🦞 +50 capacity ║  ║ 🦞 +250 capacity║  ║ 🦞 +∞ capacity  ║  ║
║  ║ 💵 +$200/sec    ║  ║ 💵 +$2K/sec     ║  ║ 💵 +$50K/sec    ║  ║
║  ║ ⚡ x1.2 bonus   ║  ║ ⚡ x2.0 bonus   ║  ║ ⚡ x10 CHAOS    ║  ║
║  ║                 ║  ║                 ║  ║                 ║  ║
║  ║ [ $25,000 ] BUY ║  ║ [ $500K ] BUY   ║  ║ [ 1000⭐ ] BUY  ║  ║
║  ║    OWNED: 0     ║  ║    OWNED: 0     ║  ║    OWNED: 0     ║  ║
║  ╚═════════════════╝  ╚═════════════════╝  ╚═════════════════╝  ║
║                                                                   ║
║                         [LOAD MORE ▼]                             ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

---

## Detailed Layout Specifications

### Modal Overlay
**Entrance Animation**: 
- Background darkens (fade to 60% black overlay, 0.3s)
- Shop panel slides up from bottom (0.5s ease-out)
- Bubble particles float up during entrance

**Exit Animation**:
- Shop panel slides down
- Fade out background
- Pop/burst effect at exit point

---

### Header
**Height**: 80px  
**Background**: Gradient `#0A2463` → `#3BCEAC`  
**Border**: Bottom 4px `#FFD700`

**Title**: "🦞 LOBSTER SHOP 🦞"
- Font: Fredoka One, 32pt, `#FFF8F0`
- Text shadow for depth
- Lobster emojis animate (claw pinch every 2s)

**Close Button** (Top Right):
- Size: 48×48px
- Icon: X or ← (back arrow)
- Background: `#FF4757`
- Hover: Rotate 90° + scale 1.1x
- Click: Squash + close menu

---

### Tab Navigation
**Position**: Below header, full width  
**Height**: 60px  
**Background**: `#0A2463`

**Tabs** (5 categories):
1. TANKS
2. UPGRADES
3. DECORATIONS
4. SPECIAL
5. PREMIUM (gold text)

**Tab Style**:
- Width: 20% each (equal distribution)
- Font: Poppins Bold, 16pt
- Inactive: `#8B7355` text, no background
- Active: `#FFF8F0` text, `#3BCEAC` underline (4px)
- Hover: Glow effect

**Animation**:
- Click: Wave slide transition between tabs
- Active indicator slides smoothly (0.3s)

---

### Search & Filter Bar
**Position**: Top of content area  
**Height**: 50px  
**Background**: `#A7E6FF`

**Search Box** (Left):
- Width: 60%
- Input field with magnifying glass 🔍 icon
- Placeholder: "Search..."
- Font: Poppins Regular, 14pt
- Border: 2px `#0A2463`, rounded 12px

**Filter Icons** (Right):
- Three toggle buttons
  - 💵 Sort by Price
  - 🦞 Sort by Capacity
  - ⭐ Show Premium Only
- Each 40×40px
- Active: `#FFD700` glow
- Click: Toggle state

---

### Item Grid
**Layout**: 3 columns on desktop, 2 on tablet, 1 on mobile  
**Spacing**: 20px between cards  
**Scroll**: Vertical scroll, smooth momentum

---

### Item Card Specifications

#### Card Container
- **Size**: 280px × 420px
- **Background**: `#F5E6D3` with gradient overlay
- **Border**: 4px rounded (20px)
  - Default: `#8B7355`
  - Hover: `#3BCEAC` glow
  - Locked: `#FF4757` dashed
- **Shadow**: 0 6px 12px rgba(0,0,0,0.4)

#### Card Sections:

##### 1. Preview Area (Top)
- **Height**: 180px
- **Background**: `#00D9FF` with bubble animation
- **Icon**: Large centered item illustration
  - 128×128px minimum
  - Animated idle state (bob, rotate slightly)

**Tier Indicator**:
- Corner badge showing tier/level
- Colors match rarity system
- Common → Legendary → Cursed

##### 2. Title Bar
- **Height**: 50px
- **Background**: Gradient overlay
- **Font**: Fredoka One, 18pt, `#0A2463`
- **Alignment**: Centered

##### 3. Stats Section
- **Height**: 120px
- **Background**: `#FFF8F0`
- **Padding**: 12px

**Stats Display** (Icons + Values):
```
🦞 +25 capacity
💵 +$50/sec
⚡ x1.5 multiplier
🌈 Sparkle effect (special perk)
```

- Font: Poppins Regular, 14pt
- Left-aligned with icons
- Use color coding:
  - Capacity: `#FF4757`
  - Money: `#FFD700`
  - Multiplier: `#9B59B6`
  - Special: `#00D9FF`

##### 4. Purchase Section (Bottom)
- **Height**: 70px
- **Background**: Depends on state

**If Available**:
- Button: "BUY"
- Price displayed above button
- Font: Fredoka One, 20pt
- Background: `#26A96C` (can afford) or `#FF3838` (can't afford)
- Click: Confirmation popup → purchase animation

**If Owned**:
- Text: "OWNED: X"
- Font: Poppins Bold, 16pt, `#3BCEAC`
- Show quantity owned
- Hover: "Buy Another?" prompt

**If Locked**:
- Lock icon 🔒
- Requirement text: "Requires Level 10" or "Complete Quest X"
- Font: Poppins Regular, 12pt, `#FF4757`
- Background: Desaturated

---

## Shop Categories

### 1. TANKS Tab
Items that increase lobster capacity + income generation.

**Items**:
- Small Tank ($500) - Basic storage
- Medium Tank ($5K) - Better storage
- Large Tank ($25K) - Even better
- Aquarium Deluxe ($100K) - Fancy + multiplier
- Ocean Tank ($500K) - Massive capacity
- Royal Lagoon ($2M) - Premium tier
- Void Abyss (1000⭐ premium currency) - Endgame chaos

**Icons**: Progressive size/fanciness
- Bucket → Pool → Tank → Aquarium → Ocean → Palace → Void

---

### 2. UPGRADES Tab
Passive bonuses, multipliers, automation.

**Items**:
- Auto-Feeder ($1K) - Automatic feeding
- Growth Hormone ($5K) - x1.5 growth speed
- Golden Lobster Charm ($25K) - x2 money
- Claw Sharpener ($50K) - Better harvesting
- Mystical Seaweed ($200K) - Rare lobster chance +10%
- Rebirth Stone ($1M) - Unlock rebirth
- CHAOS ORB (5000⭐) - x10 everything but unhinged

**Icons**: Relevant items (syringe, charm, etc.)

---

### 3. DECORATIONS Tab
Cosmetic items that add personality + small bonuses.

**Items**:
- Plastic Seaweed ($100) - Looks nice
- Treasure Chest ($500) - +5% income
- Sunken Ship ($2K) - Cool backdrop
- Neon Lights ($10K) - RGB glow effect
- Disco Ball ($50K) - Party mode
- Giant Rubber Duck ($250K) - Cursed energy +100

**Icons**: The decoration itself
**Special**: Preview in tycoon area on hover

---

### 4. SPECIAL Tab
Limited-time items, event exclusives, bundles.

**Items**:
- Seasonal decorations
- Event-exclusive tanks
- Bundle deals (e.g., "Starter Pack" with multiple items)
- Daily deals (rotating, discounted)

**Visual Treatment**:
- "LIMITED TIME!" banner
- Countdown timer if applicable
- Sparkle/glow animations
- Different border color: `#FF1493`

---

### 5. PREMIUM Tab
Real money or premium currency (⭐) purchases.

**Items**:
- VIP Pass (500⭐) - x2 all income, forever
- Instant Rebirth (1000⭐) - Skip rebirth requirements
- Legendary Lobster Egg (2000⭐) - Guaranteed legendary
- Game Pass: No Ads (100 Robux)
- Game Pass: Double Money (250 Robux)

**Visual Treatment**:
- Gold borders `#FFD700`
- Premium shimmer animation
- Larger, more prominent cards
- "PREMIUM" badge in corner

---

## Color Scheme

| Element | Color | Hex |
|---------|-------|-----|
| Modal Background | Deep Ocean | `#0A2463` |
| Card Background | Beach Sand | `#F5E6D3` |
| Active Tab | Seafoam | `#3BCEAC` |
| Buy Button (Affordable) | Kelp Green | `#26A96C` |
| Buy Button (Can't Afford) | Lobster Red | `#FF3838` |
| Locked Items | Driftwood | `#8B7355` |
| Premium Items | Golden Treasure | `#FFD700` |
| Special Items | Hot Pink | `#FF1493` |

---

## Fonts

- **Titles**: Fredoka One
- **Prices**: Fredoka One (emphasis)
- **Stats/Descriptions**: Poppins Regular
- **Buttons**: Poppins Bold

---

## Animations

### Item Card Animations

**Idle**:
- Gentle hover bob (3px up/down, 2s cycle)
- Preview icon rotates ±2°
- Bubble particles float in preview area

**Hover**:
- Scale 1.05x (0.2s ease)
- Border glow intensifies
- Shadow expands
- Preview icon scales 1.1x
- Tooltip appears with more details

**Click (Purchase)**:
- Flash white overlay
- Scale down 0.9x then bounce to 1.2x
- Confetti burst (lobster-shaped particles)
- Sound: Cash register + splash
- If can't afford: Shake animation (deny)

### Tab Switching:
- Content fades out (0.2s)
- New content slides in from right (0.3s)
- Stagger item card appearances (0.05s delay each)

### Purchase Success:
- Item card glows green
- "+1 OWNED" text floats up
- Particle burst
- Update currency counters with animation
- Show "Purchase Complete!" popup (2s)

### Purchase Failure (Not Enough Money):
- Card shakes horizontally
- Red glow pulse
- Sound: "Buzzer" or sad trombone
- Popup: "Not enough 💵! Need $XXX more"

---

## Mobile Considerations

### Layout Changes:
- Single column view (1 card per row)
- Tabs become dropdown menu
- Cards reduce to 240px width
- Search bar full width
- Filter buttons stack below search

### Touch Interactions:
- Larger touch targets (60×60px minimum)
- Swipe between tabs (gesture navigation)
- Long-press for item details
- Tap outside to close shop

### Performance:
- Lazy load items (load 6 at a time, infinite scroll)
- Reduce particle effects
- Simplify shadows on low-end devices

---

## Accessibility

- **Keyboard Navigation**: Tab through items, Enter to purchase
- **Screen Reader Support**: Aria labels for all items
- **Colorblind Mode**: Rely on icons + text, not just colors
- **Text Scaling**: All text scalable to 150%

---

## Implementation Notes

### Data Structure (Each Item):
```json
{
  "id": "medium_tank",
  "name": "Medium Tank",
  "category": "tanks",
  "description": "A decent-sized tank for your growing lobster empire.",
  "icon": "medium_tank.png",
  "price": 5000,
  "currency": "money",
  "stats": {
    "capacity": 25,
    "income": 50,
    "multiplier": 1.0
  },
  "requirements": {
    "level": 5,
    "quest": null
  },
  "rarity": "uncommon",
  "owned": 1,
  "max_owned": 999
}
```

### Purchase Flow:
1. Player clicks "BUY"
2. Check if player can afford
3. Show confirmation popup ("Buy Medium Tank for $5,000?")
4. On confirm: Deduct currency, add item, play animation
5. Update HUD counters
6. Show success notification

### Search/Filter Logic:
- Real-time search as player types
- Fuzzy matching (allow typos)
- Filter by category, price range, owned status
- Sort options: Price (low-high), Name (A-Z), Newest

