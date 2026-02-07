# 🎉 Pop-ups & Notifications - Lobster Tycoon

## Overview
Pop-ups and notifications provide instant feedback for achievements, rare catches, level-ups, and events. They should be celebratory, fun, and never intrusive. "Cute but unhinged" energy at its finest.

---

## 1. ACHIEVEMENT UNLOCK

### ASCII Mockup

```
                    ╔═══════════════════════════════════╗
                    ║    🏆 ACHIEVEMENT UNLOCKED! 🏆    ║
                    ╠═══════════════════════════════════╣
                    ║                                   ║
                    ║          ┌─────────────┐          ║
                    ║          │             │          ║
                    ║          │   [TROPHY]  │          ║
                    ║          │     🏆      │          ║
                    ║          │             │          ║
                    ║          └─────────────┘          ║
                    ║                                   ║
                    ║       LOBSTER MILLIONAIRE!        ║
                    ║                                   ║
                    ║  Earn your first million dollars  ║
                    ║                                   ║
                    ║      ✨ REWARD: +50⭐ ✨          ║
                    ║                                   ║
                    ║         [🎊 CLAIM 🎊]             ║
                    ║                                   ║
                    ╚═══════════════════════════════════╝
```

### Specifications

**Size**: 400px × 500px  
**Position**: Center screen  
**Background**: Gradient `#FFD700` → `#FF6B9D` with 95% opacity  
**Border**: 6px animated rainbow glow, rounded 24px  
**Shadow**: 0 12px 24px rgba(0,0,0,0.8)

**Entrance Animation** (1.5s total):
1. Slide down from top with bounce (0.5s)
2. Trophy icon scales 0 → 1.5x → 1.0x (0.5s)
3. Confetti burst from all sides (0.5s)
4. Text appears with typewriter effect

**Elements**:

#### Header
- "🏆 ACHIEVEMENT UNLOCKED! 🏆"
- Font: Fredoka One, 24pt, `#FFF8F0`
- Background: `#0A2463`
- Pulsing glow

#### Trophy Display
- Large icon area (150×150px)
- Trophy specific to achievement
- Rotating slowly (360° in 4s)
- Gold sparkle particles

#### Achievement Name
- Font: Fredoka One, 32pt, `#0A2463`
- Drop shadow for depth
- Examples:
  - "LOBSTER MILLIONAIRE!"
  - "CATCHING SPREE!"
  - "TANK COLLECTOR!"
  - "LOBSTER WHISPERER!"

#### Description
- Font: Poppins Regular, 16pt, `#0A2463`
- What the player did to earn it

#### Reward Display
- "✨ REWARD: +50⭐ ✨"
- Font: Poppins Bold, 18pt, `#9B59B6`
- Glowing animation

#### Claim Button
- Size: 200px × 60px
- Background: `#26A96C` with pulsing glow
- Font: Fredoka One, 20pt, `#FFF8F0`
- Icon: 🎊
- Hover: Scale 1.1x + rotate ±3°
- Click: Confetti burst + dismiss

**Exit Animation**:
- Scale up to 1.2x + fade out (0.4s)
- Particle explosion
- Sound: Triumphant fanfare

**Auto-Dismiss**: After 10s if not clicked

---

## 2. RARE LOBSTER CAUGHT

### ASCII Mockup

```
        ╔════════════════════════════════════════════════╗
        ║                                                ║
        ║          ✨ LEGENDARY LOBSTER! ✨             ║
        ║                                                ║
        ║              ┌──────────────┐                  ║
        ║              │              │                  ║
        ║              │    👑🦞👑    │                  ║
        ║              │              │                  ║
        ║              │   GLOWING    │                  ║
        ║              │   ANIMATED   │                  ║
        ║              │              │                  ║
        ║              └──────────────┘                  ║
        ║                                                ║
        ║           GOLDEN LOBSTER KING!                 ║
        ║                                                ║
        ║         💎 RARITY: LEGENDARY 💎                ║
        ║         💰 VALUE: $25,000                      ║
        ║         ⚡ MULTIPLIER: x3.0                    ║
        ║         🎲 DROP RATE: 0.01%                    ║
        ║                                                ║
        ║    "I am the lobster your lobster warned      ║
        ║              you about."                       ║
        ║                                                ║
        ║  [🎉 AMAZING!] [📤 SHARE] [🦞 VIEW IN INV]    ║
        ║                                                ║
        ╚════════════════════════════════════════════════╝
```

### Specifications

**Size**: 500px × 600px  
**Position**: Center screen  
**Background**: Rarity-based gradient
- Common: Gray gradient
- Rare: Blue gradient `#2196F3` → `#90CAF9`
- Epic: Purple gradient `#9C27B0` → `#CE93D8`
- Legendary: Gold gradient `#FFD700` → `#FFF59D`
- Mythic: Rainbow animated gradient
- Cursed: `#39FF14` with glitch effect

**Border**: 8px, color matches rarity, animated glow  
**Shadow**: Massive 0 16px 32px rgba(0,0,0,0.9)

**Entrance Animation** (2s total):
1. **Suspense Build** (0.5s):
   - Screen darkens 80%
   - Spotlight from above
   - Bubble particles rise
2. **Egg Crack** (0.5s):
   - Large egg appears center
   - Shakes violently
   - Crack lines appear
3. **BURST!** (0.5s):
   - Egg explodes into particles
   - Lobster emerges with light rays
   - Sound: Epic reveal music
4. **Details Appear** (0.5s):
   - Stats fade in one by one
   - Stagger by 0.1s each

**Elements**:

#### Header Banner
- "✨ LEGENDARY LOBSTER! ✨" (or rarity name)
- Font: Monoton, 28pt for drama
- Color: `#FFF8F0` with rainbow text stroke
- Floating animation

#### Lobster Display
- Size: 200×200px
- Animated lobster model/sprite
- Rarity-specific effects:
  - Common: None
  - Rare: Blue glow
  - Epic: Purple particles
  - Legendary: Gold rays + sparkles
  - Mythic: Rainbow aura
  - Cursed: Screen glitch, reality distortion

#### Lobster Name
- Font: Fredoka One, 36pt
- Color: Rarity color
- Examples:
  - "GOLDEN LOBSTER KING!"
  - "VOID CRAWLER"
  - "G̴̛̜L̴̦̃I̷̫̽T̶̰̾C̶̹̈H̸̺̊ ̸̰̏L̶̰̈́O̶̝͗B̴̰̈S̶̗̾T̷̜̏E̴̳̒R̷͚̈" (cursed)

#### Stats Display
```
💎 RARITY: LEGENDARY
💰 VALUE: $25,000
⚡ MULTIPLIER: x3.0
🎲 DROP RATE: 0.01%
```
- Font: Poppins Bold, 18pt
- Left-aligned with icons
- Color-coded values

#### Flavor Quote
- Unique quote for each lobster
- Font: Poppins Italic, 14pt, `#8B7355`
- Examples:
  - "I am inevitable." - Cosmic Lobster
  - "Bow before the claw!" - Lobster King
  - "E̷̬͝R̶̰̈́R̵̹̾O̸͎̿R̷̜̚" - Glitch Lobster

#### Action Buttons (3 buttons)
1. **🎉 AMAZING!** - Celebrate/dismiss
2. **📤 SHARE** - Share to social/friends
3. **🦞 VIEW IN INVENTORY** - Open inventory

**Button Style**:
- Size: 140px × 50px each
- Spacing: 12px between
- Background: `#3BCEAC`
- Hover: Glow + scale 1.05x

**Special Rarity Effects**:

**Legendary**:
- Screen flashes gold
- Fanfare sound
- All other players in server get notification

**Mythic**:
- Rainbow screen flash
- Dramatic orchestral hit
- Server-wide announcement
- Confetti rain for 5 seconds

**Cursed**:
- Screen glitches and shakes
- Distorted sound
- Random UI elements flicker
- "̷̧W̴̲͝H̴̹̅A̵̰͐T̷̰̋ ̶̣̈H̸̺̄A̵̖̍V̴͉̒Ẽ̷̘ ̶̰̌Y̸̦͂O̵̰͗U̷͉͛ ̶̹̌D̶̺̄Ô̴̰N̸͉̈́E̷̘̾?̴̹̓" message

---

## 3. LEVEL UP

### ASCII Mockup

```
                ╔═══════════════════════════════╗
                ║                               ║
                ║        ⭐ LEVEL UP! ⭐        ║
                ║                               ║
                ║            ╔═══╗              ║
                ║            ║ 5 ║              ║
                ║            ╚═══╝              ║
                ║              ↓                ║
                ║            ╔═══╗              ║
                ║            ║ 6 ║              ║
                ║            ╚═══╝              ║
                ║                               ║
                ║      🎁 NEW UNLOCKS! 🎁       ║
                ║                               ║
                ║  ✓ Large Tank (Shop)          ║
                ║  ✓ Breeding Lab Upgrade       ║
                ║  ✓ Daily Bonus: +$500         ║
                ║                               ║
                ║      💰 Bonus: +$5,000        ║
                ║                               ║
                ║        [✨ SWEET! ✨]          ║
                ║                               ║
                ╚═══════════════════════════════╝
```

### Specifications

**Size**: 350px × 450px  
**Position**: Center screen  
**Background**: Gradient `#9B59B6` → `#3BCEAC` with 90% opacity  
**Border**: 5px `#FFD700`, rounded 20px, pulsing glow

**Entrance Animation**:
1. Burst from center (scale 0 → 1.2 → 1.0)
2. Number counter animates (5 → 6)
3. Unlock items appear one by one
4. Coin shower animation

**Elements**:

#### Header
- "⭐ LEVEL UP! ⭐"
- Font: Fredoka One, 28pt, `#FFD700`
- Star rotation animation

#### Level Display
- Two large boxes showing old → new level
- Font: Fredoka One, 72pt, `#FFF8F0`
- Background: `#0A2463`
- Arrow between them
- New level pulses

#### Unlocks Section
- Title: "🎁 NEW UNLOCKS! 🎁"
- List of unlocked features
- Checkmark ✓ animation (sweep in)
- Font: Poppins Bold, 16pt

#### Bonus Reward
- "💰 Bonus: +$5,000"
- Font: Fredoka One, 20pt, `#FFD700`
- Counter animates upward

#### Dismiss Button
- "✨ SWEET! ✨"
- Size: 200px × 60px
- Background: `#26A96C`
- Pulsing glow

**Sound**: Uplifting level-up chime

**Auto-Dismiss**: 8s

---

## 4. EVENT NOTIFICATION

### ASCII Mockup

```
┌────────────────────────────────────────────────────┐
│  🎃 SPOOKY LOBSTER HALLOWEEN EVENT! 🎃            │
│  ─────────────────────────────────────────────────  │
│  Catch rare Ghost Lobsters for limited time!       │
│  Duration: 7 days remaining                        │
│  Rewards: Exclusive decorations & 1000⭐           │
│                                                     │
│  [🎃 JOIN EVENT]  [ℹ️ MORE INFO]  [✖ DISMISS]     │
└────────────────────────────────────────────────────┘
```

### Specifications

**Size**: 550px × 180px  
**Position**: Top center, below header  
**Background**: Event-themed gradient
- Halloween: `#FF6B00` → `#8B008B`
- Christmas: `#C41E3A` → `#00A86B`
- Summer: `#FFD700` → `#00D9FF`

**Border**: 4px event-themed color, rounded 16px  
**Shadow**: 0 8px 16px rgba(0,0,0,0.5)

**Entrance Animation**:
- Slide down from top (0.4s ease-out)
- Bounce slightly at end
- Event icon rotates/animates

**Elements**:

#### Event Header
- Event icon + "SPOOKY LOBSTER HALLOWEEN EVENT!"
- Font: Fredoka One, 20pt, `#FFF8F0`
- Icon bounces/animates

#### Description
- Brief event description
- Font: Poppins Regular, 14pt
- Key info highlighted in bold

#### Duration
- "Duration: 7 days remaining"
- Countdown timer (updates live)
- Font: Poppins Bold, 12pt
- Color: `#FF4757` if <24h remaining

#### Rewards Preview
- "Rewards: Exclusive decorations & 1000⭐"
- Icons + text
- Sparkle animation

#### Action Buttons
1. **JOIN EVENT** - Opens event panel
2. **MORE INFO** - Details popup
3. **DISMISS** - Close (X icon)

**Button Sizes**: 150px × 45px  
**Spacing**: 10px between

**Persistent**: Stays until dismissed or event ends  
**Re-appear**: Once per play session

---

## 5. DAILY REWARD

### ASCII Mockup

```
            ╔════════════════════════════════════╗
            ║     🎁 DAILY REWARD! 🎁           ║
            ║                                    ║
            ║         Day 7 Streak! 🔥          ║
            ║                                    ║
            ║    ┌───┬───┬───┬───┬───┬───┬───┐  ║
            ║    │ ✓ │ ✓ │ ✓ │ ✓ │ ✓ │ ✓ │🎁│  ║
            ║    └───┴───┴───┴───┴───┴───┴───┘  ║
            ║                                    ║
            ║         TODAY'S REWARDS:           ║
            ║                                    ║
            ║         💰 +$10,000                ║
            ║         ⭐ +100 Premium            ║
            ║         🎲 2x Rare Chance (1hr)    ║
            ║                                    ║
            ║    🌟 BONUS: 7-day streak! 🌟     ║
            ║         +$50,000 EXTRA!            ║
            ║                                    ║
            ║         [🎊 CLAIM ALL 🎊]          ║
            ║                                    ║
            ╚════════════════════════════════════╝
```

### Specifications

**Size**: 450px × 550px  
**Position**: Center screen  
**Background**: Gradient `#FFD700` → `#FF6B9D` with 95% opacity  
**Border**: 6px `#FFF8F0`, rounded 24px, rainbow glow if streak ≥7

**Entrance Animation**:
1. Present/gift box bounces in from top
2. Opens/unwraps with confetti
3. Rewards appear one by one

**Elements**:

#### Header
- "🎁 DAILY REWARD! 🎁"
- Font: Fredoka One, 28pt, `#FFF8F0`

#### Streak Display
- "Day 7 Streak! 🔥"
- Font: Poppins Bold, 20pt, `#FF4757`
- Fire icon pulses

#### Calendar Strip
- 7 boxes showing past 7 days
- Checkmark ✓ for claimed days
- Current day has gift icon 🎁
- Future days grayed out
- Each box: 40×40px

#### Rewards List
- Title: "TODAY'S REWARDS:"
- Each reward on separate line
- Icons + values
- Font: Poppins Bold, 18pt
- Animate in one by one (stagger 0.2s)

#### Bonus Section (if applicable)
- Shows if player has streak milestone
- Background: `#9B59B6` pill shape
- Font: Fredoka One, 16pt
- Glow effect

#### Claim Button
- "🎊 CLAIM ALL 🎊"
- Size: 250px × 70px
- Background: `#26A96C` pulsing
- Font: Fredoka One, 24pt
- Hover: Scale 1.15x + sparkles
- Click: Firework explosion

**Claim Animation**:
- Each reward flies to respective HUD counter
- Money counter updates with +$ animation
- Confetti burst
- Sound: Cash register + celebration

**Mandatory**: Must claim to continue (can't dismiss)

---

## 6. QUEST COMPLETE

### ASCII Mockup

```
        ┌──────────────────────────────────────┐
        │  ✅ QUEST COMPLETED! ✅              │
        │  ───────────────────────────────────  │
        │  "Catch 50 Common Lobsters"          │
        │                                       │
        │  PROGRESS: [██████████] 50/50        │
        │                                       │
        │  REWARDS:                             │
        │  • 💰 $5,000                          │
        │  • 🏆 +100 XP                         │
        │  • 🎁 Mystery Box x1                  │
        │                                       │
        │  [🎉 CLAIM] [→ NEXT QUEST]           │
        └──────────────────────────────────────┘
```

### Specifications

**Size**: 400px × 350px  
**Position**: Top right corner  
**Background**: `#26A96C` with 90% opacity  
**Border**: 4px `#FFF8F0`, rounded 16px

**Entrance**: Slide in from right (0.4s)

**Elements**:
- Quest name in quotes
- Progress bar (filled)
- Reward list
- Two buttons: Claim + Next Quest

**Auto-Dismiss**: 5s after claim

---

## 7. TOAST NOTIFICATIONS (Small Pop-ups)

### ASCII Mockup

```
┌─────────────────────────────┐
│  💰 +$1,000                 │
└─────────────────────────────┘

┌─────────────────────────────┐
│  🦞 Lobster ready!          │
└─────────────────────────────┘

┌─────────────────────────────┐
│  ⚠️ Tank full! (95/100)     │
└─────────────────────────────┘

┌─────────────────────────────┐
│  ✨ Multiplier active! x2.0 │
└─────────────────────────────┘
```

### Specifications

**Size**: 300px × 50px  
**Position**: Bottom right corner, stack if multiple  
**Background**: Semi-transparent based on type
- Money: `#FFD700` 80% opacity
- Info: `#00D9FF` 80% opacity
- Warning: `#FF6B00` 80% opacity
- Success: `#26A96C` 80% opacity

**Border**: 2px rounded 8px  
**Shadow**: 0 4px 8px rgba(0,0,0,0.4)

**Entrance**: Slide in from right + fade in (0.3s)  
**Exit**: Fade out after 3s  
**Stacking**: Max 5 visible, oldest dismissed first

**Font**: Poppins Bold, 14pt, `#FFF8F0`

---

## 8. CONFIRMATION DIALOGS

### ASCII Mockup

```
    ╔═══════════════════════════════════════╗
    ║          ⚠️ CONFIRM ACTION ⚠️          ║
    ╠═══════════════════════════════════════╣
    ║                                       ║
    ║  Are you sure you want to sell:      ║
    ║                                       ║
    ║      🦞 GOLDEN LOBSTER KING 🦞        ║
    ║                                       ║
    ║  You will receive: 💰 $25,000        ║
    ║                                       ║
    ║  This cannot be undone!               ║
    ║                                       ║
    ║  [✓ YES, SELL]     [✖ CANCEL]        ║
    ║                                       ║
    ╚═══════════════════════════════════════╝
```

### Specifications

**Size**: 450px × 300px  
**Position**: Center screen  
**Background**: `#0A2463` with 95% opacity  
**Border**: 4px `#FF4757` (warning), rounded 20px

**Elements**:
- Warning icon + title
- Clear description of action
- What will happen
- Emphasis on consequences
- Two buttons: Confirm (green) + Cancel (red)

**Entrance**: Scale from 0.8 → 1.0 + fade in (0.3s)

---

## Color Scheme by Notification Type

| Type | Background | Border | Text |
|------|-----------|--------|------|
| Achievement | Gold gradient | Rainbow | White |
| Rare Catch | Rarity-based | Rarity color | White |
| Level Up | Purple-Cyan | Gold | White |
| Event | Event theme | Event color | White |
| Daily Reward | Gold-Pink | White | White |
| Quest | Green | White | White |
| Toast (Money) | Gold | Yellow | White |
| Toast (Info) | Cyan | Blue | White |
| Toast (Warning) | Orange | Red | White |
| Confirmation | Deep Blue | Red | White |

---

## Font Hierarchy

- **Dramatic Headers**: Monoton (rare catches, major events)
- **Standard Headers**: Fredoka One
- **Body Text**: Poppins Regular
- **Emphasis**: Poppins Bold
- **Flavor Text**: Poppins Italic

---

## Animation Guidelines

### Entrance Animations (Priority Order)
1. **Critical** (Must see): Achievement, Rare Catch, Daily Reward
   - Dramatic, full-screen, 2-3s animation
2. **Important** (Should see): Level Up, Event, Quest
   - Moderate, 1-2s animation
3. **Informational** (Nice to see): Toasts
   - Quick, 0.3s slide-in

### Particle Effects
- **Confetti**: Achievements, Level Up, Daily Reward
- **Sparkles**: Rare catches, Premium rewards
- **Bubbles**: Background on all ocean-themed popups
- **Light Rays**: Legendary+ catches
- **Glitch**: Cursed lobster catches only

### Sound Design
- **Achievement**: Triumphant fanfare (3s)
- **Rare Catch**: Dramatic reveal music (2s)
- **Level Up**: Uplifting chime (1s)
- **Event**: Themed jingle (2s)
- **Toast**: Quick pop/ping (0.2s)
- **Confirmation**: Warning beep (0.5s)

---

## Stacking & Priority

When multiple popups occur simultaneously:

### Priority Levels:
1. **Critical** (blocks interaction): Rebirth confirmation, Daily Reward
2. **High** (center screen): Achievement, Rare Catch, Level Up
3. **Medium** (top banner): Event notifications
4. **Low** (corner): Toasts, Quest completes

### Queue System:
- Critical: Show immediately, pause game
- High: Queue, show one at a time with 1s gap
- Medium: Can stack up to 3
- Low: Stack unlimited, auto-dismiss

---

## Mobile Considerations

### Size Adjustments:
- Popups scale to 90% screen width max
- Minimum text size: 14pt
- Larger touch targets (60×60px buttons)

### Simplified Animations:
- Reduce particle count by 50%
- Shorter animation durations
- Disable complex effects on low-end devices

### Position Changes:
- Full-screen popups on mobile
- Toasts: Bottom center instead of corner
- Event banners: Full width top

---

## Accessibility

- **Screen Reader**: Announce popup type + content
- **Keyboard**: Tab through buttons, Enter to confirm
- **Reduced Motion**: Option to disable all animations
- **High Contrast**: Ensure text always readable
- **Auto-Dismiss**: Always show countdown timer

---

## Implementation Notes

### Popup Manager:
```javascript
class PopupManager {
  queue = {
    critical: [],
    high: [],
    medium: [],
    low: []
  };
  
  show(popup, priority) {
    this.queue[priority].push(popup);
    this.processQueue();
  }
  
  processQueue() {
    // Show critical immediately
    // Queue high priority with delays
    // Stack medium/low
  }
}
```

### Data Structure (Achievement):
```json
{
  "type": "achievement",
  "id": "lobster_millionaire",
  "name": "Lobster Millionaire!",
  "description": "Earn your first million dollars",
  "icon": "trophy_gold.png",
  "reward": {
    "premium": 50
  },
  "rarity": "epic"
}
```

### Analytics Tracking:
- Track which popups are dismissed vs. interacted with
- Measure time-to-claim for rewards
- A/B test animation duration for engagement

---

## Special Cases

### Server Shutdown Warning:
```
⚠️ SERVER RESTARTING IN 5 MINUTES ⚠️
Save your progress now!
[💾 SAVE NOW]
```
- Red background
- Persistent until dismissed
- Updates countdown live

### Anti-Cheat Detection:
```
🚫 SUSPICIOUS ACTIVITY DETECTED 🚫
Please play fairly to avoid consequences.
[📖 LEARN MORE]
```
- Cannot be dismissed
- Links to rules

### Friend Join Notification:
```
👤 LobsterKing2024 joined the server!
[👋 WAVE] [✖]
```
- Small toast, bottom left
- 5s auto-dismiss

