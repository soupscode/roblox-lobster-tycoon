# ⚙️ Settings Menu - Lobster Tycoon

## Overview
The Settings Menu combines standard Roblox game settings with Lobster Tycoon-specific options. Clean, organized, and accessible. Includes both functional settings and fun customization options.

---

## ASCII Mockup

```
╔═══════════════════════════════════════════════════════════════════╗
║                        ⚙️ SETTINGS ⚙️                             ║
║                          [X] Close                                ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║  [GAMEPLAY]  [AUDIO]  [GRAPHICS]  [CONTROLS]  [ACCOUNT]  [ABOUT] ║
║  ▔▔▔▔▔▔▔▔                                                         ║
║                                                                   ║
║  ┌─────────────────────────────────────────────────────────────┐ ║
║  │  GAMEPLAY SETTINGS                                          │ ║
║  │  ──────────────────────────────────────────────────────────  │ ║
║  │                                                              │ ║
║  │  Auto-Collect Lobsters                       [ON]  [OFF]    │ ║
║  │  ├─ Automatically collect lobsters when ready               │ ║
║  │                                                              │ ║
║  │  Show Tutorial Tips                          [ON]  [OFF]    │ ║
║  │  ├─ Display helpful tips for new features                   │ ║
║  │                                                              │ ║
║  │  Enable Notifications                        [ON]  [OFF]    │ ║
║  │  ├─ Get notified for events, rare catches, etc.             │ ║
║  │                                                              │ ║
║  │  Auto-Save Frequency                    [Every 30 seconds ▼]│ ║
║  │  ├─ How often your progress is saved                        │ ║
║  │     Options: 10s, 30s, 60s, Manual                          │ ║
║  │                                                              │ ║
║  │  Lobster Name Display                   [Rarity + Name ▼]   │ ║
║  │  ├─ How lobster names appear in-game                        │ ║
║  │     Options: Name Only, Rarity + Name, Icon Only            │ ║
║  │                                                              │ ║
║  │  Daily Login Rewards                         [ON]  [OFF]    │ ║
║  │  ├─ Claim daily rewards each login                          │ ║
║  │                                                              │ ║
║  │  Chaos Mode 🌀                               [ON]  [OFF]    │ ║
║  │  ├─ Enable random chaotic events (unhinged mode)            │ ║
║  │  └─ ⚠️ Warning: May cause unexpected lobster behavior       │ ║
║  │                                                              │ ║
║  └──────────────────────────────────────────────────────────────┘ ║
║                                                                   ║
║  ┌─────────────────────────────────────────────────────────────┐ ║
║  │  PERFORMANCE                                                │ ║
║  │  ──────────────────────────────────────────────────────────  │ ║
║  │                                                              │ ║
║  │  Graphics Quality                       [Auto ▼]            │ ║
║  │  ├─ Options: Low, Medium, High, Ultra, Auto                 │ ║
║  │                                                              │ ║
║  │  Particle Effects                            [ON]  [OFF]    │ ║
║  │  ├─ Disable to improve performance                          │ ║
║  │                                                              │ ║
║  │  Max Visible Lobsters                   [100 ▼]             │ ║
║  │  ├─ Limit lobsters shown at once (50/100/200/Unlimited)     │ ║
║  │                                                              │ ║
║  └──────────────────────────────────────────────────────────────┘ ║
║                                                                   ║
║                    [💾 SAVE CHANGES]  [🔄 RESET DEFAULTS]        ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

---

## Detailed Layout Specifications

### Modal Overlay
**Size**: 800px × 600px on desktop, fullscreen on mobile  
**Background**: `#0A2463` with 95% opacity  
**Border**: 4px `#3BCEAC`, rounded 24px  
**Shadow**: 0 8px 20px rgba(0,0,0,0.6)

---

### Header
**Height**: 70px  
**Background**: Gradient `#0A2463` → `#3BCEAC`  
**Border**: Bottom 3px `#FFD700`

**Title**: "⚙️ SETTINGS ⚙️"
- Font: Fredoka One, 32pt, `#FFF8F0`
- Centered
- Gear icon ⚙️ rotates slowly on hover

**Close Button** (Top Right):
- Size: 48×48px
- Icon: X
- Background: `#FF4757`
- Hover: Rotate 90° + scale 1.1x

---

### Tab Navigation
**Position**: Below header  
**Height**: 60px  
**Background**: `#0A2463`

**Tabs** (6 categories):
1. GAMEPLAY
2. AUDIO
3. GRAPHICS
4. CONTROLS
5. ACCOUNT
6. ABOUT

**Tab Style**:
- Width: ~16.6% each
- Font: Poppins Bold, 14pt
- Inactive: `#8B7355` text
- Active: `#FFF8F0` text, `#3BCEAC` underline (4px)
- Hover: Glow effect

---

### Content Area (Scrollable)
**Height**: 400px  
**Background**: `#A7E6FF` with 50% opacity  
**Padding**: 20px  
**Scroll**: Vertical, smooth

---

## Tab 1: GAMEPLAY Settings

### Settings Group Style
Each setting follows this pattern:

**Container**:
- **Background**: `#F5E6D3` rounded panel
- **Padding**: 16px
- **Margin**: 12px between settings
- **Border**: 2px `#8B7355`, rounded 12px

**Layout** (Each Setting):
```
[Setting Name]                    [CONTROL]
├─ [Description/Help Text]
```

---

### Gameplay Settings List:

#### 1. Auto-Collect Lobsters
- **Control**: Toggle switch [ON] [OFF]
- **Default**: ON
- **Description**: "Automatically collect lobsters when ready"
- **Effect**: Lobsters auto-harvest when growth complete

#### 2. Show Tutorial Tips
- **Control**: Toggle [ON] [OFF]
- **Default**: ON
- **Description**: "Display helpful tips for new features"
- **Effect**: Tooltips appear for new players

#### 3. Enable Notifications
- **Control**: Toggle [ON] [OFF]
- **Default**: ON
- **Description**: "Get notified for events, rare catches, etc."
- **Effect**: Popup notifications for important events

#### 4. Auto-Save Frequency
- **Control**: Dropdown menu
- **Options**: 10s, 30s, 60s, Manual
- **Default**: 30s
- **Description**: "How often your progress is saved"

#### 5. Lobster Name Display
- **Control**: Dropdown menu
- **Options**: 
  - Name Only
  - Rarity + Name
  - Icon Only
- **Default**: Rarity + Name
- **Description**: "How lobster names appear in-game"

#### 6. Daily Login Rewards
- **Control**: Toggle [ON] [OFF]
- **Default**: ON
- **Description**: "Claim daily rewards each login"

#### 7. Chaos Mode 🌀
- **Control**: Toggle [ON] [OFF]
- **Default**: OFF
- **Description**: "Enable random chaotic events (unhinged mode)"
- **Warning**: "⚠️ Warning: May cause unexpected lobster behavior"
- **Effect**: Random events like:
  - Lobsters grow backwards
  - Money counter displays in lobster emojis
  - Screen rotates slightly
  - Random sound effects

---

### Performance Settings (Subgroup)

#### 8. Graphics Quality
- **Control**: Dropdown
- **Options**: Low, Medium, High, Ultra, Auto
- **Default**: Auto
- **Description**: "Adjust visual quality for performance"

#### 9. Particle Effects
- **Control**: Toggle [ON] [OFF]
- **Default**: ON
- **Description**: "Disable to improve performance"
- **Effect**: Removes sparkles, bubbles, etc.

#### 10. Max Visible Lobsters
- **Control**: Dropdown
- **Options**: 50, 100, 200, Unlimited
- **Default**: 100
- **Description**: "Limit lobsters shown at once"

---

## Tab 2: AUDIO Settings

```
╔═══════════════════════════════════════════════════════════╗
║  AUDIO SETTINGS                                           ║
║  ────────────────────────────────────────────────────────  ║
║                                                            ║
║  Master Volume                    [████████░░] 80%        ║
║  ├─ Overall game volume                                   ║
║                                                            ║
║  Music Volume                     [██████░░░░] 60%        ║
║  ├─ Background music and themes                           ║
║                                                            ║
║  Sound Effects Volume             [██████████] 100%       ║
║  ├─ Clicks, pops, splashes, etc.                          ║
║                                                            ║
║  Ambient Sounds                   [███████░░░] 70%        ║
║  ├─ Ocean waves, bubbles, background atmosphere           ║
║                                                            ║
║  Lobster Sounds 🦞                [████████░░] 80%        ║
║  ├─ Lobster-specific sound effects (claws, etc.)          ║
║                                                            ║
║  Mute When Tabbed Out                        [ON] [OFF]   ║
║  ├─ Silence game when window is not focused               ║
║                                                            ║
║  Enable Voice Lines                          [ON] [OFF]   ║
║  ├─ Lobster NPC dialogue (if applicable)                  ║
║                                                            ║
║  Underwater Audio Effect                     [ON] [OFF]   ║
║  ├─ Apply muffled effect to simulate underwater           ║
║  └─ 🎧 Recommended for immersion!                         ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝
```

**Volume Sliders**:
- Range: 0-100%
- Visual: Horizontal slider bar
- Fill color: `#3BCEAC`
- Background: `#8B7355`
- Live preview: Plays sample sound on change

---

## Tab 3: GRAPHICS Settings

```
╔═══════════════════════════════════════════════════════════╗
║  GRAPHICS SETTINGS                                        ║
║  ────────────────────────────────────────────────────────  ║
║                                                            ║
║  Graphics Quality Preset          [High ▼]                ║
║  ├─ Options: Low, Medium, High, Ultra, Custom             ║
║                                                            ║
║  Resolution                       [1920x1080 ▼]           ║
║  ├─ Display resolution                                    ║
║                                                            ║
║  Fullscreen Mode                             [ON] [OFF]   ║
║  ├─ Play in fullscreen                                    ║
║                                                            ║
║  ─── VISUAL EFFECTS ───                                   ║
║                                                            ║
║  Particle Effects                            [ON] [OFF]   ║
║  ├─ Bubbles, sparkles, explosions                         ║
║                                                            ║
║  Water Reflections                           [ON] [OFF]   ║
║  ├─ Realistic water surface reflections                   ║
║                                                            ║
║  Shadows                                     [ON] [OFF]   ║
║  ├─ Dynamic shadows for objects                           ║
║                                                            ║
║  Bloom/Glow Effects                          [ON] [OFF]   ║
║  ├─ Glowing halos around lights/lobsters                  ║
║                                                            ║
║  Anti-Aliasing                               [ON] [OFF]   ║
║  ├─ Smooth jagged edges                                   ║
║                                                            ║
║  Motion Blur                                 [ON] [OFF]   ║
║  ├─ Blur effect when moving camera                        ║
║                                                            ║
║  Field of View (FOV)              [████████░░] 80°        ║
║  ├─ Camera viewing angle (60° - 110°)                     ║
║                                                            ║
║  ─── ACCESSIBILITY ───                                    ║
║                                                            ║
║  Colorblind Mode                  [None ▼]                ║
║  ├─ Options: None, Protanopia, Deuteranopia, Tritanopia  ║
║                                                            ║
║  High Contrast Mode                          [ON] [OFF]   ║
║  ├─ Increase contrast for visibility                      ║
║                                                            ║
║  Reduce Motion                               [ON] [OFF]   ║
║  ├─ Disable excessive animations                          ║
║                                                            ║
║  Text Size                        [Medium ▼]              ║
║  ├─ Options: Small, Medium, Large, Extra Large            ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝
```

---

## Tab 4: CONTROLS Settings

```
╔═══════════════════════════════════════════════════════════╗
║  CONTROLS SETTINGS                                        ║
║  ────────────────────────────────────────────────────────  ║
║                                                            ║
║  Control Scheme                   [Keyboard + Mouse ▼]    ║
║  ├─ Options: Keyboard+Mouse, Gamepad, Touch, Custom       ║
║                                                            ║
║  Mouse Sensitivity                [██████░░░░] 60%        ║
║  ├─ Camera rotation speed                                 ║
║                                                            ║
║  Invert Mouse Y-Axis                         [ON] [OFF]   ║
║  ├─ Flip vertical camera movement                         ║
║                                                            ║
║  ─── KEYBINDINGS ───                                      ║
║                                                            ║
║  Move Forward                     [W]        [REBIND]     ║
║  Move Backward                    [S]        [REBIND]     ║
║  Move Left                        [A]        [REBIND]     ║
║  Move Right                       [D]        [REBIND]     ║
║  Jump                             [Space]    [REBIND]     ║
║  Open Shop                        [E]        [REBIND]     ║
║  Open Inventory                   [I]        [REBIND]     ║
║  Open Map                         [M]        [REBIND]     ║
║                                                            ║
║  ─── MOBILE CONTROLS ───                                  ║
║                                                            ║
║  Touch Control Style              [Joystick ▼]            ║
║  ├─ Options: Joystick, Tap-to-Move, Swipe                 ║
║                                                            ║
║  Button Size                      [Medium ▼]              ║
║  ├─ Options: Small, Medium, Large                         ║
║                                                            ║
║  Button Opacity                   [████████░░] 80%        ║
║  ├─ Transparency of on-screen buttons                     ║
║                                                            ║
║                         [🔄 RESET TO DEFAULTS]            ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝
```

**Rebind Button**:
- Click to enter rebind mode
- Prompt: "Press any key..."
- Validates no conflicts
- Shows error if key already bound

---

## Tab 5: ACCOUNT Settings

```
╔═══════════════════════════════════════════════════════════╗
║  ACCOUNT SETTINGS                                         ║
║  ────────────────────────────────────────────────────────  ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  PLAYER INFO                                         │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  👤 Username: LobsterKing2024                        │ ║
║  │  🏆 Rebirth Level: 5                                 │ ║
║  │  💰 Total Earnings: $45,320,000                      │ ║
║  │  🦞 Lobsters Caught: 12,450                          │ ║
║  │  📅 Account Created: Jan 1, 2024                     │ ║
║  │  ⏰ Playtime: 127 hours                              │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  PREMIUM STATUS                                      │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  ⭐ Premium Currency: 2,450⭐                         │ ║
║  │  👑 VIP Status: Active                               │ ║
║  │  🎁 Daily Rewards Streak: 15 days                    │ ║
║  │                                                       │ ║
║  │  [💎 BUY PREMIUM CURRENCY]                           │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  DATA MANAGEMENT                                     │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  [💾 MANUAL SAVE]        [☁️ CLOUD SYNC]            │ ║
║  │  Last Saved: 2 minutes ago                           │ ║
║  │                                                       │ ║
║  │  [📤 EXPORT DATA]        [📥 IMPORT DATA]            │ ║
║  │  ├─ Backup your progress                             │ ║
║  │                                                       │ ║
║  │  [🗑️ DELETE ALL DATA]                                │ ║
║  │  └─ ⚠️ This cannot be undone!                        │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  PRIVACY                                             │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  Show Profile to Others              [ON] [OFF]     │ ║
║  │  Allow Friend Requests               [ON] [OFF]     │ ║
║  │  Share Stats on Leaderboard          [ON] [OFF]     │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝
```

**Dangerous Actions**:
- "Delete All Data" requires double confirmation
- Red warning text and icon
- Must type "DELETE" to confirm

---

## Tab 6: ABOUT

```
╔═══════════════════════════════════════════════════════════╗
║  ABOUT LOBSTER TYCOON                                     ║
║  ────────────────────────────────────────────────────────  ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │              🦞 LOBSTER TYCOON 🦞                     │ ║
║  │                                                       │ ║
║  │              Build Your Lobster Empire!              │ ║
║  │                                                       │ ║
║  │  Version: 1.2.5                                      │ ║
║  │  Released: January 2024                              │ ║
║  │  Developer: LobsterStudios                           │ ║
║  │                                                       │ ║
║  │  [🌐 WEBSITE] [💬 DISCORD] [🐦 TWITTER] [📝 WIKI]   │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  CREDITS                                             │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  Lead Developer: @LobsterDev                         │ ║
║  │  Art & Design: @CrustaceanArtist                     │ ║
║  │  Music: @OceanBeats                                  │ ║
║  │  Special Thanks: The Lobster Community! 🦞           │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  PATCH NOTES (v1.2.5)                                │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  ✨ NEW: Cosmic Lobster species added                │ ║
║  │  🔧 FIX: Breeding lab UI improvements                │ ║
║  │  ⚡ BUFF: Rebirth rewards increased by 20%           │ ║
║  │  🐛 FIX: Fixed lobsters escaping tanks (oops!)       │ ║
║  │  🎨 NEW: Rainbow tank decorations                    │ ║
║  │                                                       │ ║
║  │  [📜 FULL CHANGELOG]                                 │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  SUPPORT                                             │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  Need help? Have feedback?                           │ ║
║  │                                                       │ ║
║  │  [❓ HELP CENTER]  [🐛 REPORT BUG]  [💡 SUGGEST]    │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
║  ┌──────────────────────────────────────────────────────┐ ║
║  │  LEGAL                                               │ ║
║  │  ───────────────────────────────────────────────────  │ ║
║  │  [📄 Terms of Service]   [🔒 Privacy Policy]        │ ║
║  │  [⚖️ Community Guidelines]                           │ ║
║  │                                                       │ ║
║  │  © 2024 LobsterStudios. All rights reserved.        │ ║
║  └──────────────────────────────────────────────────────┘ ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝
```

---

## Bottom Action Bar

**Position**: Fixed bottom of settings panel  
**Height**: 70px  
**Background**: `#0A2463`

**Buttons**:

### 1. SAVE CHANGES
- **Size**: 200px × 50px
- **Background**: `#26A96C` (green)
- **Icon**: 💾
- **Font**: Poppins Bold, 18pt, `#FFF8F0`
- **State**: Only enabled if changes made
- **Action**: Save all settings, show confirmation toast

### 2. RESET DEFAULTS
- **Size**: 200px × 50px
- **Background**: `#FF4757` (red)
- **Icon**: 🔄
- **Font**: Poppins Bold, 18pt, `#FFF8F0`
- **Action**: Reset all settings to default (with confirmation)

---

## Color Scheme

| Element | Color | Hex |
|---------|-------|-----|
| Modal Background | Deep Ocean | `#0A2463` |
| Content Background | Bubble Blue | `#A7E6FF` |
| Setting Panel | Beach Sand | `#F5E6D3` |
| Active Tab | Seafoam | `#3BCEAC` |
| Save Button | Kelp Green | `#26A96C` |
| Reset Button | Lobster Red | `#FF4757` |
| Warning Text | Coral Pink | `#FF6B9D` |
| Slider Fill | Seafoam | `#3BCEAC` |

---

## Fonts

- **Title**: Fredoka One
- **Tab Labels**: Poppins Bold
- **Setting Names**: Poppins Bold
- **Descriptions**: Poppins Regular
- **Buttons**: Poppins Bold

---

## Animations

### Tab Switching:
- Fade out old content (0.2s)
- Slide in new content from right (0.3s)
- Underline indicator slides to new tab

### Toggle Switch:
- Slide animation (0.3s ease)
- Color transition: Gray → Green (ON) / Red (OFF)
- Haptic feedback (mobile)

### Slider:
- Smooth drag animation
- Value updates in real-time
- Sample sound plays when adjusting audio sliders

### Save Success:
- Green checkmark appears
- "Settings Saved!" toast notification
- Brief flash on save button

---

## Mobile Considerations

### Layout:
- Full screen on mobile
- Single column layout
- Tabs become dropdown menu
- Larger touch targets (60×60px)

### Responsive Text:
- Auto-scale font sizes
- Multi-line descriptions on narrow screens

### Gestures:
- Swipe between tabs
- Tap outside to close
- Long-press for tooltips

---

## Accessibility

- **Keyboard Navigation**: Tab through all settings, Space to toggle
- **Screen Reader**: Announce setting name, value, description
- **High Contrast**: Available in Graphics tab
- **Reduced Motion**: Available in Graphics tab
- **Colorblind Modes**: Multiple options

---

## Implementation Notes

### Settings Storage:
```json
{
  "gameplay": {
    "autoCollect": true,
    "showTutorials": true,
    "notifications": true,
    "autoSaveFrequency": 30,
    "lobsterNameDisplay": "rarityAndName",
    "dailyRewards": true,
    "chaosMode": false
  },
  "audio": {
    "masterVolume": 80,
    "musicVolume": 60,
    "sfxVolume": 100,
    "ambientVolume": 70,
    "lobsterSounds": 80,
    "muteWhenTabbed": true,
    "voiceLines": true,
    "underwaterEffect": true
  },
  "graphics": {
    "quality": "high",
    "particles": true,
    "reflections": true,
    "shadows": true,
    "bloom": true,
    "antiAliasing": true,
    "motionBlur": false,
    "fov": 80,
    "colorblindMode": "none",
    "highContrast": false,
    "reduceMotion": false,
    "textSize": "medium"
  },
  "controls": {
    "scheme": "keyboard+mouse",
    "mouseSensitivity": 60,
    "invertY": false,
    "keybinds": {...}
  }
}
```

### Validation:
- Check for conflicts in keybindings
- Ensure FOV within range (60-110°)
- Validate volume values (0-100%)
- Warn if disabling auto-save

### Apply Settings:
- Some settings apply immediately (volume)
- Others require reload/restart (graphics quality)
- Show indicator for settings that need restart

