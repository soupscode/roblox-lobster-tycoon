# 🦞 Main HUD - Lobster Tycoon

## Overview
The main HUD is always visible during gameplay. It provides essential information at a glance without cluttering the screen. Mobile-first design with scalable elements.

---

## ASCII Mockup

```
╔═══════════════════════════════════════════════════════════════╗
║ [🦞]  LOBSTER TYCOON                            [⚙️] [?] [👤] ║
╠═══════════════════════════════════════════════════════════════╣
║                                                                 ║
║  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐         ║
║  │ 💵 MONEY     │  │ 🦞 LOBSTERS  │  │ ⚡ MULTIPLIER │         ║
║  │              │  │              │  │              │         ║
║  │  $1,234,567  │  │    142/200   │  │    x2.5      │         ║
║  │  +$50/sec    │  │              │  │  [+0.5 🔥]   │         ║
║  └──────────────┘  └──────────────┘  └──────────────┘         ║
║                                                                 ║
║                                                                 ║
║                    [GAME VIEW AREA]                            ║
║                                                                 ║
║                    🌊🦞🪨🌿🦞🌊                                  ║
║                                                                 ║
║                                                                 ║
║  ┌─────────────┐                                               ║
║  │  MINIMAP    │                                               ║
║  │             │                              ┌──────────────┐ ║
║  │  [▓▓░░]     │                              │   QUESTS     │ ║
║  │  [░▓▓░] 📍  │                              │ ─────────────│ ║
║  │  [░░▓▓]     │                              │ □ Catch 50   │ ║
║  │             │                              │   lobsters   │ ║
║  └─────────────┘                              │ ✓ Earn $1000 │ ║
║                                               └──────────────┘ ║
║                                                                 ║
║  ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐                  ║
║  │  🏪    │ │  🦞    │ │  🏆    │ │  🎁    │                  ║
║  │  SHOP  │ │ LOBSTR │ │ REBIRTH│ │ EVENTS │                  ║
║  └────────┘ └────────┘ └────────┘ └────────┘                  ║
╚═══════════════════════════════════════════════════════════════╝
```

---

## Detailed Layout Specifications

### Top Bar (Header)
**Position**: Fixed top, full width  
**Height**: 60px  
**Background**: `#0A2463` with 80% opacity  
**Border**: Bottom 3px `#3BCEAC` glow

**Elements**:
1. **Game Logo** (Left)
   - Lobster icon + "LOBSTER TYCOON" text
   - Font: Fredoka One, 20pt, `#FFD700`
   - Animated: Lobster claws pinch every 3s

2. **Settings Icon** (Top Right)
   - Gear icon, 32x32px
   - Color: `#FFF8F0`
   - Hover: Rotate 90° clockwise

3. **Help Icon** (Top Right)
   - Question mark, 32x32px
   - Pulsing glow `#00D9FF`

4. **Profile Icon** (Top Right)
   - Player avatar, 40x40px circular
   - Border: 2px `#FFD700` if premium, `#3BCEAC` if free

---

### Currency & Stats Bar
**Position**: Top left, below header  
**Layout**: Horizontal row of 3 cards

#### Card Style (Each):
- **Size**: 180px × 90px
- **Background**: `#A7E6FF` with 90% opacity
- **Border**: 3px rounded (16px), `#0A2463`
- **Shadow**: 0 4px 8px rgba(0,0,0,0.3)
- **Spacing**: 12px between cards

#### 1. Money Display
- **Icon**: 💵 (or gold coin icon)
- **Main Value**: Current money
  - Font: Fredoka One, 24pt, `#FFD700`
  - Animation: Count-up effect when gaining money
- **Sub Value**: Income per second
  - Font: Poppins Regular, 12pt, `#26A96C`
  - Prefix with "+" and animate upward float (+$50/sec)

#### 2. Lobster Count
- **Icon**: 🦞 (animated idle wobble)
- **Main Value**: Current/Max count (142/200)
  - Font: Fredoka One, 24pt, `#FF4757`
  - Color changes:
    - Green `#26A96C` if <50% capacity
    - Yellow `#FFD700` if 50-80%
    - Red `#FF3838` if >80%
- **Progress Bar**: Below numbers
  - Height: 8px
  - Fill: `#FF4757`
  - Background: `#0A2463`

#### 3. Multiplier
- **Icon**: ⚡ (electric spark animation)
- **Main Value**: Current multiplier (x2.5)
  - Font: Fredoka One, 28pt, `#9B59B6`
  - Glow effect when active
- **Boost Indicator**: 
  - Small fire icon 🔥 if temporary boost active
  - Shows remaining boost value (+0.5)
  - Countdown timer in corner

---

### Minimap
**Position**: Bottom left corner  
**Size**: 150px × 150px  
**Background**: `#0A2463` with 70% opacity  
**Border**: 3px `#3BCEAC`, rounded 12px

**Features**:
- Top-down view of player's tycoon area
- Player position: Red dot 📍
- Buildings: Dark blocks `#8B7355`
- Water areas: `#00D9FF`
- Interactive: Click to fast-travel (if unlocked)

**Animation**: 
- Radar sweep every 5s (rotating line)
- Pulse on player position

---

### Quest Panel (Optional)
**Position**: Bottom right  
**Size**: 200px × 180px  
**Background**: `#F5E6D3` with 85% opacity  
**Border**: 3px `#FF4757`, rounded 16px

**Content**:
- Title: "QUESTS" (Fredoka One, 16pt, `#0A2463`)
- Up to 3 active quests shown
- Checkbox ☐/✓ for each
- Progress bar for ongoing quests
- Hover: Expand to show rewards

**Collapse Option**: 
- Minimize to small icon when not needed
- Click to re-expand

---

### Bottom Action Bar
**Position**: Fixed bottom, centered  
**Height**: 90px  
**Background**: Gradient `#0A2463` → transparent  

**Buttons** (4 main actions):
Each button:
- **Size**: 80px × 80px
- **Spacing**: 16px between
- **Style**: Circular or rounded square (20px radius)
- **Background**: `#3BCEAC`
- **Border**: 4px `#FFF8F0`
- **Icon**: 48x48px, centered
- **Label**: Below icon, Poppins Bold, 12pt

#### Buttons:
1. **🏪 SHOP** - `#FFD700` background
2. **🦞 LOBSTER** - `#FF4757` background
3. **🏆 REBIRTH** - `#9B59B6` background (locked icon if unavailable)
4. **🎁 EVENTS** - `#00D9FF` background (notification badge if active)

**Hover Effect**:
- Scale 1.15x
- Rotate ±5° wobble
- Glow shadow

**Click Effect**:
- Squash to 0.9x
- Bounce back with overshoot
- Bubble pop sound

---

## Color Scheme

| Element | Color | Hex |
|---------|-------|-----|
| Header Background | Deep Ocean | `#0A2463` |
| Stat Cards | Bubble Blue | `#A7E6FF` |
| Money Text | Golden Treasure | `#FFD700` |
| Lobster Text | Lobster Red | `#FF4757` |
| Multiplier Text | Purple Starfish | `#9B59B6` |
| Borders/Accents | Seafoam | `#3BCEAC` |
| Button Backgrounds | Various | See above |

---

## Font Specifications

- **Headers**: Fredoka One
- **Values/Numbers**: Fredoka One (high contrast)
- **Labels**: Poppins Bold
- **Small Text**: Poppins Regular

---

## Animations

### Idle Animations (Continuous):
1. **Money Counter**: Gentle pulse scale (1.0 → 1.02 → 1.0) every 2s
2. **Lobster Icon**: Rotate ±3° wobble, 2s cycle
3. **Multiplier Icon**: Electric spark particles
4. **Background**: Slow parallax bubble float upward
5. **Minimap**: Rotating radar sweep every 5s

### Interaction Animations:
1. **Button Hover**: 
   - Scale 1.05x over 0.2s
   - Add glow effect (box-shadow)
   - Rotate 2-3°

2. **Button Click**:
   - Scale down 0.95x
   - Bounce to 1.1x
   - Return to 1.0x
   - Total duration: 0.4s

3. **Money Gain**:
   - Green "+$XXX" text floats up from money display
   - Fade out after 1s
   - Counter animates (count-up effect)

4. **Stat Card Update**:
   - Flash border color
   - Pulse scale 1.05x once
   - Value changes with smooth transition

### Screen Entry:
- Fade in from bottom: 0.5s ease-out
- Stagger each element by 0.1s
- Final settle with slight bounce

---

## Mobile Considerations

### Layout Adjustments:
1. **Stat Cards**: Stack vertically on narrow screens (<600px)
2. **Minimap**: Reduce to 100×100px or hide (toggle button)
3. **Quest Panel**: Auto-minimize to small icon
4. **Bottom Buttons**: Reduce to 64×64px, increase spacing

### Touch Targets:
- Minimum 60×60px for all interactive elements
- 16px spacing between buttons
- Larger hit boxes than visual elements (padding)

### Text Scaling:
- Dynamic font sizes based on screen width
- Money display: 18-24pt range
- Labels: 10-14pt range

### Performance:
- Reduce animation complexity on mobile
- Disable particle effects on low-end devices
- Option to simplify HUD in settings

---

## Accessibility

- **High Contrast Mode**: Option in settings
- **Colorblind Support**: Use icons + text labels, not just colors
- **Text Scaling**: Allow 125-150% scaling
- **Reduced Motion**: Toggle for animations in settings

---

## Implementation Notes

### Update Frequency:
- Money: Update every 0.1s (smooth counting)
- Lobster count: Instant update on change
- Multiplier: Update when changed + countdown if timed

### Z-Index Layering:
1. Game view (z-index: 0)
2. Minimap & Quest panel (z-index: 10)
3. Stat cards (z-index: 20)
4. Bottom buttons (z-index: 30)
5. Header (z-index: 40)
6. Popups/Modals (z-index: 100+)

### Responsive Breakpoints:
- Mobile: <600px
- Tablet: 600-1024px
- Desktop: >1024px

