# 🏆 Rebirth Screen - "LOBSTER NIRVANA" - Lobster Tycoon

## Overview
The Rebirth/Prestige system is where players ascend to LOBSTER NIRVANA, reset their progress for permanent bonuses. This screen should feel EPIC, slightly unhinged, and rewarding. Think: ascending to lobster heaven.

---

## ASCII Mockup

```
╔═══════════════════════════════════════════════════════════════════╗
║                                                                   ║
║                     ✨ ASCEND TO LOBSTER NIRVANA ✨               ║
║                                                                   ║
║                              🌟                                   ║
║                          ✨  👑  ✨                               ║
║                        ✨  🦞  ✨                                 ║
║                      ✨    ⭐    ✨                               ║
║                    ✨   REBIRTH   ✨                             ║
║                  ✨    LEVEL 5    ✨                             ║
║                                                                   ║
║  ┌──────────────────────────────────────────────────────────┐   ║
║  │                   CURRENT STATUS                          │   ║
║  │  ─────────────────────────────────────────────────────   │   ║
║  │  💰 Total Earnings: $10,000,000                          │   ║
║  │  🦞 Lobsters Caught: 5,420                               │   ║
║  │  ⚡ Current Multiplier: x2.5                             │   ║
║  │  🏆 Rebirth Level: 4                                     │   ║
║  └──────────────────────────────────────────────────────────┘   ║
║                                                                   ║
║  ┌──────────────────────────────────────────────────────────┐   ║
║  │              REBIRTH INTO LOBSTER NIRVANA                │   ║
║  │  ─────────────────────────────────────────────────────   │   ║
║  │  🌀 Reset ALL progress (tanks, lobsters, money)          │   ║
║  │  ✅ Keep: Rebirth bonuses, premium items, achievements   │   ║
║  │  🎁 Gain: Permanent +50% multiplier                      │   ║
║  │  🎁 Gain: +10 max tank capacity                          │   ║
║  │  🎁 Gain: Unlock "Cosmic Lobster" (exclusive!)           │   ║
║  │  🎁 Gain: 500⭐ Premium Currency                          │   ║
║  │                                                           │   ║
║  │  🌟 BONUS: First rebirth of the day! +100% rewards       │   ║
║  └──────────────────────────────────────────────────────────┘   ║
║                                                                   ║
║  ┌──────────────────────────────────────────────────────────┐   ║
║  │              LIFETIME REBIRTH BONUSES                     │   ║
║  │  ─────────────────────────────────────────────────────   │   ║
║  │  ⚡ Total Multiplier: x12.5 (from 4 rebirths)            │   ║
║  │  🦞 Bonus Capacity: +40                                  │   ║
║  │  🎲 Rare Catch Chance: +8%                               │   ║
║  │  💎 Exclusive Lobsters Unlocked: 7                       │   ║
║  └──────────────────────────────────────────────────────────┘   ║
║                                                                   ║
║  ┌──────────────────────────────────────────────────────────┐   ║
║  │  REQUIREMENT: Earn $5,000,000 ✅ (READY!)                │   ║
║  │  REQUIREMENT: Catch 1,000 lobsters ✅ (READY!)           │   ║
║  │  REQUIREMENT: Own 5 legendary lobsters ✅ (READY!)       │   ║
║  └──────────────────────────────────────────────────────────┘   ║
║                                                                   ║
║           [💫 REBIRTH NOW] [❌ CANCEL] [ℹ️ MORE INFO]            ║
║                                                                   ║
║           "Are you ready to transcend lobster mortality?"        ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

---

## Detailed Layout Specifications

### Background
**Visual Treatment**:
- Animated gradient background:
  - `#0A2463` (deep ocean) → `#9B59B6` (mystical purple) → `#00D9FF` (cosmic blue)
  - Slow gradient rotation (10s cycle)
- Floating particles:
  - Stars ✨
  - Lobster souls 🦞 (transparent, floating upward)
  - Light rays emanating from center
- Ethereal sound: Ambient ocean + celestial tones

**Full Screen Modal**:
- Darkened overlay behind (80% black)
- Center panel with glow effect

---

### Header Section
**Height**: 200px  
**Background**: Transparent with radial glow

**Title**: "✨ ASCEND TO LOBSTER NIRVANA ✨"
- Font: Monoton (for dramatic effect), 48pt
- Color: Animated gradient gold → white → gold
- Text shadow with glow
- Letter spacing: 4px

**Rebirth Icon** (Center):
- Large animated lobster crown 👑🦞
- Size: 128×128px
- Animation: Slow rotation + float + glow pulse
- Particle effects: Stars orbiting around it
- Light rays shooting outward

**Rebirth Level Indicator**:
- "REBIRTH LEVEL 5" below icon
- Font: Fredoka One, 32pt, `#FFD700`
- Glow effect

---

### Current Status Panel
**Size**: 600px × 150px  
**Background**: `#0A2463` with 85% opacity  
**Border**: 4px `#FFD700`, rounded 20px  
**Shadow**: 0 8px 16px rgba(0,0,0,0.5)

**Title**: "CURRENT STATUS"
- Font: Poppins Bold, 20pt, `#3BCEAC`
- Underline separator

**Stats Display** (4 rows):
```
💰 Total Earnings: $10,000,000
🦞 Lobsters Caught: 5,420
⚡ Current Multiplier: x2.5
🏆 Rebirth Level: 4
```

- Font: Poppins Regular, 16pt
- Left-aligned with icons
- Values in bold, color-coded:
  - Money: `#FFD700`
  - Lobsters: `#FF4757`
  - Multiplier: `#9B59B6`
  - Rebirth: `#00D9FF`

---

### Rebirth Rewards Panel
**Size**: 600px × 280px  
**Background**: Gradient `#9B59B6` → `#FF1493` with 90% opacity  
**Border**: 4px animated rainbow glow, rounded 20px

**Title**: "REBIRTH INTO LOBSTER NIRVANA"
- Font: Fredoka One, 24pt, `#FFF8F0`
- Underline: Animated wave

**Reset Warning** (Top):
- "🌀 Reset ALL progress (tanks, lobsters, money)"
- Font: Poppins Bold, 14pt, `#FF3838`
- Icon: Rotating spiral 🌀

**What You Keep** (Second line):
- "✅ Keep: Rebirth bonuses, premium items, achievements"
- Font: Poppins Regular, 14pt, `#26A96C`

**Rewards Section** (List):
Each reward:
- Icon + description
- "🎁 Gain: Permanent +50% multiplier"
- "🎁 Gain: +10 max tank capacity"
- "🎁 Gain: Unlock 'Cosmic Lobster' (exclusive!)"
- "🎁 Gain: 500⭐ Premium Currency"

**Style**:
- Font: Poppins Bold, 16pt
- Color: `#FFF8F0`
- Each line has sparkle ✨ animation on the icon
- Stagger animation: Fade in one by one

**Bonus Indicator** (Bottom):
- "🌟 BONUS: First rebirth of the day! +100% rewards"
- Background: `#FFD700` pill shape
- Pulse animation
- Only shows if applicable

---

### Lifetime Bonuses Panel
**Size**: 600px × 150px  
**Background**: `#0A2463` with 85% opacity  
**Border**: 3px `#3BCEAC`, rounded 20px

**Title**: "LIFETIME REBIRTH BONUSES"
- Font: Poppins Bold, 20pt, `#FFD700`

**Cumulative Stats** (4 rows):
```
⚡ Total Multiplier: x12.5 (from 4 rebirths)
🦞 Bonus Capacity: +40
🎲 Rare Catch Chance: +8%
💎 Exclusive Lobsters Unlocked: 7
```

- Font: Poppins Regular, 16pt
- Shows what you've accumulated from previous rebirths
- Values highlighted in `#00D9FF`

---

### Requirements Panel
**Size**: 600px × 120px  
**Background**: `#F5E6D3` with 90% opacity  
**Border**: 3px, rounded 16px
  - Green `#26A96C` if all met
  - Red `#FF3838` if any missing

**Requirements** (Checklist):
Each requirement:
- Checkbox: ✅ if met, ❌ if not
- Text: "Earn $5,000,000" + status
- Progress bar if not met (e.g., "$3,500,000 / $5,000,000")

**Examples**:
```
✅ REQUIREMENT: Earn $5,000,000 (READY!)
✅ REQUIREMENT: Catch 1,000 lobsters (READY!)
✅ REQUIREMENT: Own 5 legendary lobsters (READY!)
```

OR if not ready:
```
❌ REQUIREMENT: Earn $5,000,000 ($3.2M / $5M) [████████░░] 64%
✅ REQUIREMENT: Catch 1,000 lobsters (READY!)
❌ REQUIREMENT: Own 5 legendary lobsters (3/5)
```

**Font**: Poppins Regular, 14pt
**Colors**:
- Met: `#26A96C`
- Not met: `#FF3838`

---

### Action Buttons

**Position**: Bottom center, horizontal row  
**Spacing**: 24px between buttons

#### 1. REBIRTH NOW Button
- **Size**: 280px × 70px
- **Background**: Animated gradient
  - `#FFD700` → `#FF1493` → `#9B59B6` (cycling)
- **Border**: 4px `#FFF8F0`, rounded 16px
- **Font**: Fredoka One, 24pt, `#FFF8F0`
- **Icon**: 💫 before text
- **State**:
  - Enabled: Pulsing glow, particles around button
  - Disabled: Grayscale, no animation, "🔒 LOCKED"

**Hover Effect**:
- Scale 1.1x
- Glow intensifies
- Rotate ±3° wobble
- Sound: Ethereal chime

**Click Effect**:
- Flash white
- Scale down to 0.95x
- Trigger confirmation popup
- Particle explosion

#### 2. CANCEL Button
- **Size**: 140px × 70px
- **Background**: `#8B7355` (driftwood)
- **Border**: 3px `#FFF8F0`, rounded 16px
- **Font**: Poppins Bold, 18pt, `#FFF8F0`
- **Icon**: ❌

**Hover**: Scale 1.05x, slight red tint
**Click**: Close rebirth screen

#### 3. MORE INFO Button
- **Size**: 140px × 70px
- **Background**: `#00D9FF` (aqua)
- **Border**: 3px `#FFF8F0`, rounded 16px
- **Font**: Poppins Bold, 18pt, `#FFF8F0`
- **Icon**: ℹ️

**Click**: Open detailed breakdown popup

---

### Bottom Flavor Text
**Position**: Below buttons  
**Text**: "Are you ready to transcend lobster mortality?"
- Font: Poppins Italic, 16pt, `#A7E6FF`
- Fading pulse animation
- Changes randomly each visit:
  - "Become one with the cosmic lobster."
  - "Your lobsters will guide you to the next realm."
  - "It's time to ascend, lobster chosen one."
  - "Do you dare to rebirth into chaos?"

---

## Confirmation Popup

When clicking "REBIRTH NOW":

```
╔═══════════════════════════════════════════════════════════╗
║                    ⚠️ FINAL WARNING ⚠️                    ║
║                                                           ║
║  You are about to RESET EVERYTHING:                      ║
║                                                           ║
║  ❌ All money ($10,000,000)                              ║
║  ❌ All tanks (48 tanks)                                 ║
║  ❌ All lobsters (5,420 lobsters)                        ║
║  ❌ All upgrades (32 upgrades)                           ║
║                                                           ║
║  ✅ YOU WILL KEEP:                                       ║
║  • All rebirth bonuses                                   ║
║  • Premium items & game passes                           ║
║  • Achievements                                          ║
║                                                           ║
║  ✅ YOU WILL GAIN:                                       ║
║  • Permanent +50% multiplier                             ║
║  • +10 max tank capacity                                 ║
║  • Cosmic Lobster unlock                                 ║
║  • 500⭐ Premium Currency                                 ║
║                                                           ║
║  This cannot be undone.                                  ║
║                                                           ║
║  Type "ASCEND" to confirm:                               ║
║  ┌─────────────────────────────────────┐                ║
║  │ [___________________________]       │                ║
║  └─────────────────────────────────────┘                ║
║                                                           ║
║     [🌟 CONFIRM REBIRTH]     [❌ CANCEL]                 ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```

**Features**:
- Must type "ASCEND" (case-insensitive)
- Confirmation button disabled until typed correctly
- Red background (`#FF3838` tint) for warning
- Shaking animation on popup entrance

---

## Rebirth Animation Sequence

Once confirmed, trigger epic animation:

### Phase 1: Dissolution (2s)
- Screen fades to white
- All UI elements dissolve into particles
- Sound: Ascending whoosh

### Phase 2: The Void (1s)
- Pure white screen
- Single lobster emoji 🦞 in center
- Slowly rotating

### Phase 3: Ascension (3s)
- Lobster 🦞 transforms into 👑
- Light rays explode outward
- Particle storm of stars, lobsters, money
- Sound: Epic orchestral hit
- Text appears: "ASCENDING..."

### Phase 4: Reward Reveal (5s)
- Each reward appears one by one with fanfare
  - "+50% MULTIPLIER!" (scale in with glow)
  - "+10 CAPACITY!" (bounce in)
  - "COSMIC LOBSTER UNLOCKED!" (sparkle burst)
  - "+500⭐!" (rain from top)
- Sound: Chime for each reward

### Phase 5: Return (2s)
- Fade to game view
- Everything is reset
- Fresh start with new bonuses active
- Welcome message: "Welcome to Rebirth Level 5!"

**Total Duration**: ~13 seconds

---

## Color Scheme

| Element | Color | Hex |
|---------|-------|-----|
| Background Gradient 1 | Deep Ocean | `#0A2463` |
| Background Gradient 2 | Purple Starfish | `#9B59B6` |
| Background Gradient 3 | Aqua Glow | `#00D9FF` |
| Title | Animated Gold | `#FFD700` |
| Reward Panel | Purple → Pink | `#9B59B6` → `#FF1493` |
| Rebirth Button | Rainbow Gradient | Animated |
| Warning Text | Lobster Red | `#FF3838` |
| Success Text | Kelp Green | `#26A96C` |

---

## Fonts

- **Main Title**: Monoton (dramatic)
- **Panel Titles**: Fredoka One
- **Stats/Info**: Poppins Regular
- **Buttons**: Fredoka One
- **Flavor Text**: Poppins Italic

---

## Animations

### Continuous Animations:
1. **Background**: Gradient rotation (10s)
2. **Particle Float**: Stars/lobsters float upward
3. **Title**: Subtle glow pulse (2s cycle)
4. **Rebirth Icon**: Rotate + float (4s cycle)
5. **Reward Icons**: Sparkle twinkle

### Interaction Animations:
1. **Button Hover**:
   - Scale 1.1x
   - Glow intensifies
   - Particle effect around button
   - Wobble rotation

2. **Button Click**:
   - Flash white
   - Scale 0.95x → 1.2x → 1.0x
   - Ripple effect outward
   - Sound: Epic click

3. **Requirements Check**:
   - When requirement met: ❌ → ✅ with flash
   - Progress bar fills smoothly
   - Confetti burst when all met

4. **Panel Entrance**:
   - Slide in from different directions
   - Stagger timing (0.1s each)
   - Fade in with scale effect

---

## Mobile Considerations

### Layout Changes:
- Single column layout
- Panels stack vertically
- Reduce padding/margins
- Smaller text sizes (responsive)

### Touch Interactions:
- Larger touch targets (buttons 60×60px minimum)
- Confirmation popup: Full screen on mobile
- Swipe down to close

### Performance:
- Reduce particle count
- Simplify gradient animations
- Lower animation frame rate on low-end devices

---

## Rebirth Level Tiers

Different rebirth levels have different themes:

### Rebirth 1-3: "Enlightenment"
- Theme: Blue/Cyan colors
- Icon: Basic crown
- Rewards: Small multipliers (+25%)

### Rebirth 4-6: "Ascension"
- Theme: Purple/Gold colors
- Icon: Glowing crown
- Rewards: Medium multipliers (+50%)

### Rebirth 7-9: "Transcendence"
- Theme: Gold/Rainbow colors
- Icon: Multi-tier crown
- Rewards: Large multipliers (+75%)

### Rebirth 10+: "NIRVANA"
- Theme: Cosmic/Chaotic colors
- Icon: Glitched crown with effects
- Rewards: Massive multipliers (+100%+)
- Special: Unlock "Nirvana Mode" (everything is lobsters)

---

## Special Features

### Daily Rebirth Bonus
- First rebirth of the day: Double rewards
- Shows countdown to next daily reset
- Bonus indicator pulses

### Rebirth Leaderboard
- "Fastest Rebirth" times
- "Most Rebirths" count
- "Highest Multiplier" achieved

### Rebirth Achievements
- "First Rebirth" - Special badge
- "10 Rebirths" - Exclusive lobster
- "Rebirth in under 1 hour" - Speed demon badge

### Rebirth Calculator
- "More Info" button shows detailed breakdown
- Project future bonuses
- Compare with current stats
- Optimal rebirth timing suggestions

---

## Accessibility

- **High Contrast Mode**: Option for clearer text
- **Screen Reader**: Announce all stats and rewards
- **Keyboard Navigation**: Tab through all buttons
- **Reduced Motion**: Disable spinning/floating effects

---

## Implementation Notes

### Rebirth Requirements Calculation:
```javascript
function calculateRebirthRequirements(currentLevel) {
  return {
    money: 5000000 * Math.pow(2, currentLevel),
    lobsters: 1000 * Math.pow(1.5, currentLevel),
    legendaries: 5 + currentLevel
  };
}
```

### Rebirth Rewards Calculation:
```javascript
function calculateRebirthRewards(currentLevel) {
  return {
    multiplier: 0.5 + (currentLevel * 0.1),
    capacity: 10 + (currentLevel * 2),
    premiumCurrency: 500 + (currentLevel * 100),
    exclusiveLobster: currentLevel >= 3
  };
}
```

### Save State (What Persists):
- Rebirth level
- Cumulative multipliers
- Achievements
- Premium purchases
- Exclusive unlocks

### Save State (What Resets):
- Current money
- Current lobsters
- Tanks owned
- Regular upgrades
- Quest progress

