# 🦞 Lobster Tycoon - Art Asset List & Style Guide

> **Version:** 1.0  
> **Last Updated:** 2025-01-14  
> **Art Director:** OpenClaw Studios

---

## Table of Contents
1. [Visual Style Guide](#1-visual-style-guide)
2. [3D Asset List](#2-3d-asset-list)
3. [2D Asset List](#3-2d-asset-list)
4. [Animation List](#4-animation-list)
5. [Roblox-Specific Guidelines](#5-roblox-specific-guidelines)

---

# 1. Visual Style Guide

## 1.1 Art Direction

**Style:** Stylized Low-Poly with Soft Gradients

We're going for a **"cozy tycoon"** aesthetic — friendly, approachable, and satisfying. Think *Adopt Me* meets *My Restaurant* with a seaside charm. Characters and lobsters have exaggerated, cute proportions (big eyes, chunky claws) while environments use clean geometric shapes with subtle texture detail.

### Key Pillars
| Pillar | Description |
|--------|-------------|
| **Friendly & Approachable** | Rounded edges, soft shadows, no harsh angles on characters |
| **Vibrant & Saturated** | Colors pop but aren't neon; warm and inviting |
| **Clean Readability** | Silhouettes are instantly readable at all zoom levels |
| **Satisfying Progression** | Visual upgrades feel substantial and rewarding |

### Reference Inspirations
- **Adopt Me** — Character proportions, UI polish
- **My Restaurant** — Tycoon layout, progression visuals
- **Stardew Valley** — Cozy farming vibes, color warmth
- **Slime Rancher** — Creature personality, playful physics
- **SpongeBob SquarePants** — Underwater color palette inspiration

---

## 1.2 Color Palette

### Primary Palette
| Name | Hex | Usage |
|------|-----|-------|
| **Ocean Blue** | `#1E88E5` | Water, UI accents, cooldowns |
| **Sunset Orange** | `#FF6B35` | Highlights, CTAs, rare items |
| **Sandy Beige** | `#F5E6D3` | Backgrounds, neutral UI |
| **Deep Navy** | `#1A237E` | Text, shadows, depth |
| **Seafoam Green** | `#4DB6AC` | Success states, money, growth |

### Lobster Rarity Palette
| Rarity | Primary | Secondary | Glow/Accent |
|--------|---------|-----------|-------------|
| **Common** | `#D84315` | `#BF360C` | None |
| **Uncommon** | `#43A047` | `#2E7D32` | None |
| **Rare** | `#1E88E5` | `#1565C0` | `#64B5F6` (subtle) |
| **Epic** | `#8E24AA` | `#6A1B9A` | `#CE93D8` (medium) |
| **Legendary** | `#FFD700` | `#FFA000` | `#FFEB3B` (bright) |
| **Mythic** | `#E91E63` | `#880E4F` | `#F48FB1` (pulsing) |
| **Cosmic** | `#000000` | `#311B92` | Rainbow shift |

### UI Palette
| Element | Hex | Notes |
|---------|-----|-------|
| **Panel Background** | `#FFFFFF` @ 95% opacity | Soft frosted glass |
| **Panel Border** | `#90CAF9` | Subtle blue tint |
| **Button Primary** | `#4CAF50` | Green = action |
| **Button Secondary** | `#78909C` | Gray = cancel/back |
| **Button Danger** | `#F44336` | Red = delete/sell |
| **Text Primary** | `#212121` | Nearly black |
| **Text Secondary** | `#757575` | Muted gray |
| **Currency Gold** | `#FFD700` | Coins, premium |
| **Currency Shell** | `#E0E0E0` | Basic currency |

---

## 1.3 Lighting Guidelines

### General Lighting
- **Time of Day:** Fixed at "Golden Hour" (late afternoon)
- **Sun Angle:** 35° elevation, coming from the west
- **Ambient:** Warm fill light (`#FFF8E1`) at 40% intensity
- **Shadows:** Soft, slightly blue-tinted (`#90CAF9`)
- **No harsh black shadows** — always tinted

### Zone-Specific Lighting
| Zone | Mood | Key Light | Ambient |
|------|------|-----------|---------|
| **Starter Dock** | Welcoming | Warm yellow | Bright |
| **Tank Farm** | Industrial-cozy | Neutral white | Medium |
| **Deep Sea Area** | Mysterious | Cool blue | Dim with god rays |
| **Premium Lounge** | Luxurious | Warm gold | Rich, high contrast |

### Special Effects Lighting
- **Legendary+ lobsters:** Emit soft point light matching their accent color
- **Hatching eggs:** Pulsing glow buildup before pop
- **Upgrade moments:** Brief flash + ambient light shift

---

## 1.4 Particle Effect Styles

### General Style
- Soft, rounded particles (circles or soft-edged shapes)
- Moderate quantity (performance-conscious)
- Satisfying arcs with slight gravity
- Color-matched to context

### Effect Library

| Effect Name | Description | Colors | Priority |
|-------------|-------------|--------|----------|
| **Splash_Small** | Water droplets when lobster moves | `#4FC3F7`, `#FFFFFF` | Must-have |
| **Splash_Big** | Large splash for catches/drops | `#29B6F6`, `#E1F5FE` | Must-have |
| **Bubbles_Idle** | Gentle bubbles in tanks | `#E3F2FD` | Must-have |
| **Bubbles_Active** | Fast bubbles when breeding | `#BBDEFB`, `#FFFFFF` | Must-have |
| **Coins_Burst** | Currency earned | `#FFD700`, `#FFF59D` | Must-have |
| **Stars_Sparkle** | Rare item reveal | Rarity-matched | Must-have |
| **Confetti_Celebrate** | Achievement unlocked | Rainbow | Nice-to-have |
| **Hearts_Love** | Breeding success | `#F48FB1`, `#FCE4EC` | Nice-to-have |
| **Steam_Industrial** | Machinery working | `#ECEFF1`, `#CFD8DC` | Nice-to-have |
| **Smoke_Puff** | Speed boost/teleport | `#E0E0E0` | Nice-to-have |
| **Lightning_Cosmic** | Cosmic lobster aura | `#7C4DFF`, `#B388FF` | Nice-to-have |

---

# 2. 3D Asset List

## 2.1 Lobster Models

### Base Lobster Anatomy
All lobsters share a consistent rig with these parts:
- Body (thorax + abdomen)
- 2 Large Claws (animated)
- 8 Walking Legs (4 pairs)
- 2 Antennae
- Tail Fan
- 2 Eyes (expressive)

### Lobster Variants by Rarity

#### Common Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Atlantic Red** | Classic red lobster, the bread and butter | Standard proportions, warm red-orange | Must-have |
| **Brown Crawler** | Muddy brown, slightly smaller | Muted colors, humble look | Must-have |
| **Spotted Shore** | Tan with dark spots | Freckled pattern, friendly face | Must-have |

#### Uncommon Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Emerald Green** | Rare green mutation | Deep forest green, slight sheen | Must-have |
| **Blue Claw** | Regular body, blue-tipped claws | Gradient from red to blue on claws | Must-have |
| **Striped Tiger** | Orange with dark stripes | Bold pattern, fierce expression | Must-have |
| **Albino White** | Pale cream colored | Pink eyes, delicate appearance | Nice-to-have |

#### Rare Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Deep Blue** | Full blue coloration (real mutation!) | Brilliant cobalt, prestigious | Must-have |
| **Calico Mosaic** | Multi-colored patches | Orange, black, yellow patches | Must-have |
| **Crystal Clear** | Semi-transparent body | Glass-like material, visible internals | Must-have |
| **Sunset Gradient** | Yellow to red gradient | Warm ombre, popular | Nice-to-have |

#### Epic Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Amethyst Royal** | Purple with crown-like head crest | Regal pose, jewel accents | Must-have |
| **Golden Emperor** | Shimmering gold plating | Metallic material, larger size | Must-have |
| **Bioluminescent** | Glows in patterns | Animated glow texture, teal accents | Must-have |
| **Cotton Candy** | Pink and blue swirled | Pastel cute, fluffy-looking texture | Nice-to-have |

#### Legendary Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Diamond Claw** | Body with crystalline claws | Refractive claws, rainbow sparkle | Must-have |
| **Phoenix Flame** | Fire-themed, ember particles | Animated flame texture, warm glow | Must-have |
| **Frost King** | Ice-themed with frozen crown | Icy material, snowflake particles | Must-have |
| **Shadow Phantom** | Dark with purple smoke trail | Semi-transparent black, eerie | Nice-to-have |

#### Mythic Lobsters
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Celestial Guardian** | Angelic, with halo and wing-fins | White/gold, divine glow, feather details | Must-have |
| **Abyssal Terror** | Deep sea nightmare, extra limbs | Bioluminescent lure, sharp edges | Must-have |
| **Rainbow Prismatic** | Constantly shifting all colors | Animated rainbow shader | Nice-to-have |

#### Cosmic Lobsters (Ultra-Rare)
| Name | Description | Visual Notes | Priority |
|------|-------------|--------------|----------|
| **Nebula Drifter** | Galaxy pattern on shell | Animated starfield texture, floats | Must-have |
| **Void Walker** | Black hole themed | Gravity distortion effect, ominous | Nice-to-have |
| **Infinity Lobster** | Reality-bending design | Impossible geometry, fractal patterns | Nice-to-have |

### Lobster Size Variants
Each lobster type needs 3 size variants:
- **Baby** (freshly hatched, 50% scale, extra cute proportions)
- **Adult** (standard, 100% scale)
- **Giant** (special mutant, 150% scale, available through breeding)

---

## 2.2 Tank Models

| Name | Description | Size | Capacity | Priority | Inspiration |
|------|-------------|------|----------|----------|-------------|
| **Starter Bucket** | Humble plastic bucket | 4x4x4 studs | 1 lobster | Must-have | Beach pail |
| **Basic Tank** | Simple glass rectangle | 8x6x6 studs | 3 lobsters | Must-have | Home aquarium |
| **Wooden Vat** | Rustic wooden barrel-style | 10x10x8 studs | 5 lobsters | Must-have | Wine barrel |
| **Industrial Pool** | Metal-framed large pool | 16x12x6 studs | 10 lobsters | Must-have | Fish farm |
| **Luxury Aquarium** | Ornate, decorative frame | 12x8x10 studs | 8 lobsters | Must-have | Fancy hotel lobby |
| **Bio-Dome** | Spherical glass enclosure | 14x14x14 studs | 12 lobsters | Nice-to-have | Biodome |
| **Deep Sea Habitat** | Pressurized, submarine-style | 20x16x10 studs | 20 lobsters | Nice-to-have | Submarine |
| **Infinity Pool** | Seeming endless luxury | 24x18x6 studs | 30 lobsters | Nice-to-have | Resort pool |

### Tank Accessories (attachable)
| Name | Description | Priority |
|------|-------------|----------|
| **Aerator Pump** | Bubbles + productivity boost | Must-have |
| **Heater Coil** | Warm glow, speeds breeding | Must-have |
| **Filter System** | Clean water particles | Must-have |
| **Auto-Feeder** | Dispenses food automatically | Must-have |
| **Decoration Rock** | Natural hiding spot | Nice-to-have |
| **Plant Bundle** | Seaweed and coral | Nice-to-have |
| **Treasure Chest** | Decorative + rare finds | Nice-to-have |

---

## 2.3 Machinery & Equipment

| Name | Description | Function | Priority | Inspiration |
|------|-------------|----------|----------|-------------|
| **Lobster Trap** | Classic cage trap | Catching wild lobsters | Must-have | Traditional trap |
| **Net Launcher** | Mechanical net thrower | Quick catch tool | Must-have | Fishing net gun |
| **Breeding Chamber** | Heart-shaped pod | Combines two lobsters | Must-have | Incubator |
| **Egg Incubator** | Warm nest with light | Hatches eggs faster | Must-have | Chicken incubator |
| **Gene Splicer** | Sci-fi machine with tubes | Creates mutations | Must-have | Lab equipment |
| **Claw Polisher** | Spinning buffer | Increases lobster value | Nice-to-have | Car wash buffer |
| **Size-O-Matic** | Growth ray machine | Makes giants | Nice-to-have | Shrink ray reversed |
| **Teleporter Pad** | Glowing platform | Fast travel | Nice-to-have | Sci-fi teleporter |
| **Auto-Collector** | Conveyor system | Auto-harvests money | Nice-to-have | Factory line |
| **Research Station** | Lab desk with microscope | Unlocks new species | Nice-to-have | Science lab |

---

## 2.4 Decorations

### Functional Decorations
| Name | Description | Bonus | Priority |
|------|-------------|-------|----------|
| **Lucky Anchor** | Golden anchor statue | +luck for breeding | Must-have |
| **Neptune Statue** | Trident-wielding god | +productivity aura | Must-have |
| **Lighthouse Model** | Spinning light | Attracts rare lobsters | Must-have |
| **Captain's Wheel** | Ship steering wheel | Prestige display | Nice-to-have |
| **Treasure Map** | Framed wall map | Unlocks secrets | Nice-to-have |

### Aesthetic Decorations
| Name | Description | Priority |
|------|-------------|----------|
| **Fishing Net Wall** | Draped netting with shells | Must-have |
| **Buoy String** | Colorful buoys on rope | Must-have |
| **Dock Post** | Weathered wooden post | Must-have |
| **Crate Stack** | Wooden shipping crates | Must-have |
| **Barrel Set** | Rustic barrels | Must-have |
| **Seagull** | Perched bird (animated) | Nice-to-have |
| **Life Preserver** | Red/white ring | Nice-to-have |
| **Ship in Bottle** | Tiny ship display | Nice-to-have |
| **Mounted Fish** | Trophy fish plaque | Nice-to-have |
| **Pirate Flag** | Jolly Roger banner | Nice-to-have |
| **Coral Piece** | Decorative coral chunk | Nice-to-have |
| **Shell Collection** | Display of shells | Nice-to-have |

---

## 2.5 NPCs

| Name | Role | Description | Priority | Inspiration |
|------|------|-------------|----------|-------------|
| **Captain Crusty** | Tutorial guide | Old sea captain, friendly, eyepatch optional | Must-have | Salty sailor |
| **Penny the Trader** | Shop keeper | Young entrepreneur, apron, clipboard | Must-have | Market vendor |
| **Professor Pinch** | Scientist | Lab coat, big glasses, crab claw glove | Must-have | Mad scientist |
| **Salty Pete** | Rare trader | Mysterious hooded figure, appears randomly | Must-have | Traveling merchant |
| **Marina** | Breeding expert | Mermaid-inspired, shell accessories | Nice-to-have | Marine biologist |
| **Chef Bubbles** | Restaurant buyer | Chef hat, jolly, pays premium | Nice-to-have | TV chef |
| **Scuba Steve** | Deep sea guide | Full diving suit, muffled voice | Nice-to-have | Diver |
| **The Collector** | Legendary buyer | Fancy suit, monocle, only wants legendaries | Nice-to-have | Rich collector |

### NPC Design Guidelines
- **Proportions:** Roblox R15 base with custom heads
- **Heads:** Oversized (1.2x) for expressiveness  
- **Eyes:** Large and expressive
- **Hands:** Simple mitt-style or fingerless gloves
- **Accessories:** Each has 2-3 signature items

---

## 2.6 Environment Props

### Dock/Harbor Zone
| Name | Description | Priority |
|------|-------------|----------|
| **Wooden Dock Section** | Modular dock piece | Must-have |
| **Dock Piling** | Vertical log support | Must-have |
| **Boat Cleat** | Rope tie-off point | Must-have |
| **Fishing Boat** | Small docked vessel | Must-have |
| **Lobster Shack** | Starter building | Must-have |
| **Fish Market Stand** | Selling station | Must-have |
| **Ice Machine** | Storage cooling | Nice-to-have |
| **Tackle Shop** | Equipment store building | Nice-to-have |

### Beach Zone
| Name | Description | Priority |
|------|-------------|----------|
| **Sand Terrain** | Beach ground texture | Must-have |
| **Tidal Pool** | Small water feature | Must-have |
| **Beach Rocks** | Scattered stones | Must-have |
| **Driftwood** | Weathered wood pieces | Nice-to-have |
| **Beach Umbrella** | Colorful shade | Nice-to-have |
| **Sandcastle** | Decorative castle | Nice-to-have |

### Ocean Zone
| Name | Description | Priority |
|------|-------------|----------|
| **Ocean Plane** | Animated water surface | Must-have |
| **Underwater Rocks** | Seafloor terrain | Must-have |
| **Kelp Forest** | Swaying seaweed | Must-have |
| **Coral Reef Set** | Colorful coral variety | Must-have |
| **Sunken Ship** | Wreck exploration area | Nice-to-have |
| **Treasure Chest** | Discoverable loot | Nice-to-have |
| **Giant Clam** | Interactive decoration | Nice-to-have |

---

# 3. 2D Asset List

## 3.1 UI Icons

### Currency Icons
| Name | Description | Size | Priority |
|------|-------------|------|----------|
| **Shell Coin** | Basic currency, spiral shell | 64x64, 128x128 | Must-have |
| **Gold Doubloon** | Premium currency, pirate coin | 64x64, 128x128 | Must-have |
| **Pearl** | Special event currency | 64x64, 128x128 | Nice-to-have |

### Resource Icons
| Name | Description | Priority |
|------|-------------|----------|
| **Lobster Food** | Fish pellets in bowl | Must-have |
| **Oxygen Tank** | Blue tank with gauge | Must-have |
| **Heater Fuel** | Orange canister | Must-have |
| **DNA Strand** | Double helix, colorful | Must-have |
| **Egg** | Spotted lobster egg | Must-have |
| **Net** | Folded fishing net | Must-have |
| **Bait** | Worm or fish piece | Must-have |

### Action Icons
| Name | Description | Priority |
|------|-------------|----------|
| **Catch/Grab** | Hand grabbing | Must-have |
| **Feed** | Food dropping | Must-have |
| **Breed** | Two hearts merging | Must-have |
| **Sell** | Coin with arrow | Must-have |
| **Upgrade** | Arrow pointing up | Must-have |
| **Collect** | Hand with coins | Must-have |
| **Move** | Four-way arrow | Must-have |
| **Info** | Question mark circle | Must-have |
| **Settings** | Gear cog | Must-have |
| **Close** | X mark | Must-have |

### Status Icons
| Name | Description | Priority |
|------|-------------|----------|
| **Hungry** | Empty stomach | Must-have |
| **Happy** | Smiley face | Must-have |
| **Sick** | Green face | Must-have |
| **Ready to Breed** | Heart with sparkle | Must-have |
| **Sleeping** | Zzz bubbles | Must-have |
| **Boosted** | Lightning bolt | Nice-to-have |
| **Protected** | Shield | Nice-to-have |

### Rarity Badges
| Name | Colors | Priority |
|------|--------|----------|
| **Common Badge** | Gray/brown border | Must-have |
| **Uncommon Badge** | Green border | Must-have |
| **Rare Badge** | Blue border + shine | Must-have |
| **Epic Badge** | Purple border + glow | Must-have |
| **Legendary Badge** | Gold border + particles | Must-have |
| **Mythic Badge** | Pink/animated border | Must-have |
| **Cosmic Badge** | Rainbow shifting border | Must-have |

### Navigation Icons
| Name | Description | Priority |
|------|-------------|----------|
| **Home** | House shape | Must-have |
| **Shop** | Shopping cart | Must-have |
| **Inventory** | Backpack/chest | Must-have |
| **Collection** | Book/album | Must-have |
| **Quests** | Scroll with star | Must-have |
| **Leaderboard** | Trophy | Must-have |
| **Friends** | Two people | Must-have |
| **Map** | Folded map | Must-have |

---

## 3.2 Decals and Textures

### Surface Decals
| Name | Description | Resolution | Priority |
|------|-------------|------------|----------|
| **Wood Plank** | Weathered dock wood | 512x512 | Must-have |
| **Metal Plate** | Industrial brushed metal | 512x512 | Must-have |
| **Rusty Metal** | Aged industrial surface | 512x512 | Must-have |
| **Sand** | Beach sand texture | 512x512 | Must-have |
| **Wet Sand** | Darker, wave-touched | 512x512 | Must-have |
| **Coral Pattern** | Organic coral surface | 512x512 | Must-have |
| **Glass Bubble** | Tank glass with bubbles | 256x256 | Must-have |
| **Tile Floor** | Clean facility tiles | 512x512 | Nice-to-have |

### Animated Textures
| Name | Description | Frames | Priority |
|------|-------------|--------|----------|
| **Water Surface** | Gentle wave motion | 8 frames | Must-have |
| **Caustics** | Underwater light patterns | 16 frames | Must-have |
| **Bubbles Rising** | Looping bubble column | 12 frames | Must-have |
| **Fire Glow** | For flame lobsters | 8 frames | Nice-to-have |
| **Electric Spark** | For special effects | 6 frames | Nice-to-have |

### Sign Decals
| Name | Description | Priority |
|------|-------------|----------|
| **"Fresh Lobsters"** | Shop sign | Must-have |
| **"Breeding Zone"** | Area marker | Must-have |
| **"VIP Area"** | Premium zone | Must-have |
| **"DANGER"** | Warning sign | Nice-to-have |
| **Price Tags** | Various prices | Must-have |
| **Arrow Signs** | Directional | Must-have |

---

## 3.3 Promotional Art

| Name | Description | Dimensions | Priority |
|------|-------------|------------|----------|
| **Game Icon** | Main Roblox icon, lobster face close-up with logo | 512x512 | Must-have |
| **Game Thumbnail** | Player surrounded by rare lobsters, tanks in background | 1920x1080 | Must-have |
| **Loading Screen** | Underwater scene with silhouetted lobsters, logo center | 1920x1080 | Must-have |
| **Update Banner** | Template for announcing updates | 1200x628 | Must-have |
| **Social Share Card** | "I caught a [LEGENDARY]!" template | 1200x630 | Nice-to-have |
| **Merch Design - Logo** | Clean vector logo for merchandise | Vector/SVG | Nice-to-have |
| **Merch Design - Character** | Captain Crusty illustration | 2000x2000 | Nice-to-have |

---

# 4. Animation List

## 4.1 Lobster Animations

### Core Movement (All Lobsters)
| Name | Description | Frames | Loop | Priority |
|------|-------------|--------|------|----------|
| **Idle_Breathe** | Subtle body pulse, antennae sway | 60 | Yes | Must-have |
| **Idle_LookAround** | Head/eye movement, curious | 90 | No | Must-have |
| **Idle_ClawSnap** | Random claw snap | 30 | No | Must-have |
| **Walk_Forward** | 8-leg walk cycle | 24 | Yes | Must-have |
| **Walk_Backward** | Reverse walk | 24 | Yes | Must-have |
| **Walk_Strafe** | Side-step movement | 24 | Yes | Nice-to-have |
| **Swim_Forward** | Tail-propelled swimming | 30 | Yes | Must-have |
| **Swim_Dash** | Quick escape burst | 15 | No | Nice-to-have |
| **Turn_Left** | Rotate in place | 20 | No | Must-have |
| **Turn_Right** | Rotate in place | 20 | No | Must-have |

### Behavior Animations
| Name | Description | Frames | Loop | Priority |
|------|-------------|--------|------|----------|
| **Eat_Chomp** | Grabbing and eating food | 45 | No | Must-have |
| **Sleep_Curl** | Curled up resting | 120 | Yes | Must-have |
| **Sleep_WakeUp** | Transition from sleep | 30 | No | Must-have |
| **Breed_Dance** | Courtship display, claw wave | 90 | No | Must-have |
| **Breed_Success** | Hearts, happy celebration | 60 | No | Must-have |
| **Celebrate_Jump** | Excited hop | 30 | No | Must-have |
| **Celebrate_Spin** | Twirl in place | 45 | No | Must-have |
| **Celebrate_Wave** | Claw wave at camera | 40 | No | Nice-to-have |
| **Angry_Snap** | Aggressive claw snapping | 30 | No | Nice-to-have |
| **Scared_Hide** | Defensive posture | 20 | No | Nice-to-have |
| **Sick_Wobble** | Unsteady movement | 60 | Yes | Nice-to-have |

### Special Rarity Animations
| Name | Description | For Rarity | Priority |
|------|-------------|------------|----------|
| **Glow_Pulse** | Aura intensity variation | Epic+ | Must-have |
| **Legendary_Entrance** | Dramatic reveal | Legendary | Must-have |
| **Mythic_Float** | Levitation idle | Mythic | Must-have |
| **Cosmic_Phase** | Glitch/phase effect | Cosmic | Must-have |
| **Rainbow_Cycle** | Color shift animation | Prismatic | Nice-to-have |

### Lifecycle Animations
| Name | Description | Priority |
|------|-------------|----------|
| **Egg_Wobble** | Egg shaking before hatch | Must-have |
| **Egg_Crack** | Shell breaking apart | Must-have |
| **Egg_Hatch** | Baby emerges with particles | Must-have |
| **Grow_Spurt** | Size increase transition | Must-have |
| **Evolution_Transform** | Rarity upgrade effect | Nice-to-have |

---

## 4.2 UI Animations

### Button Animations
| Name | Description | Duration | Priority |
|------|-------------|----------|----------|
| **Button_Hover** | Scale up to 1.05, slight glow | 0.15s | Must-have |
| **Button_Press** | Scale down to 0.95, darken | 0.1s | Must-have |
| **Button_Disabled** | Grayscale + reduced opacity | N/A | Must-have |
| **Button_Shine** | Highlight sweep for CTAs | 2s loop | Nice-to-have |

### Panel Animations
| Name | Description | Duration | Priority |
|------|-------------|----------|----------|
| **Panel_Open** | Scale from 0 + fade in | 0.25s | Must-have |
| **Panel_Close** | Scale to 0 + fade out | 0.2s | Must-have |
| **Panel_Shake** | Error feedback shake | 0.3s | Must-have |
| **Panel_Slide** | Slide from side | 0.3s | Nice-to-have |

### Notification Animations
| Name | Description | Duration | Priority |
|------|-------------|----------|----------|
| **Notif_Pop** | Bounce in from top | 0.3s | Must-have |
| **Notif_Dismiss** | Slide out + fade | 0.2s | Must-have |
| **Badge_Pulse** | New item indicator | 1s loop | Must-have |
| **Counter_Tick** | Number increment roll | 0.1s per digit | Must-have |

### Reward Animations
| Name | Description | Duration | Priority |
|------|-------------|----------|----------|
| **Coin_Fly** | Coins arc to counter | 0.5s | Must-have |
| **Chest_Open** | Lid opens with light rays | 1s | Must-have |
| **Card_Flip** | Gacha reveal flip | 0.8s | Must-have |
| **Rarity_Reveal** | Background glow based on rarity | 1.5s | Must-have |
| **Confetti_Burst** | Celebration particles | 2s | Nice-to-have |

### Progress Animations
| Name | Description | Duration | Priority |
|------|-------------|----------|----------|
| **Bar_Fill** | Smooth progress fill | Variable | Must-have |
| **Bar_Flash** | Completion flash | 0.5s | Must-have |
| **Spinner_Load** | Loading indicator | Loop | Must-have |
| **Timer_Tick** | Clock countdown pulse | 1s loop | Must-have |

---

## 4.3 Environmental Animations

### Water Effects
| Name | Description | Priority |
|------|-------------|----------|
| **Wave_Surface** | Ocean surface undulation | Must-have |
| **Ripple_Touch** | Circular ripple from interaction | Must-have |
| **Current_Flow** | Underwater current particles | Must-have |
| **Foam_Shore** | Wave crash foam | Nice-to-have |

### Atmospheric
| Name | Description | Priority |
|------|-------------|----------|
| **Cloud_Drift** | Slow sky cloud movement | Nice-to-have |
| **Bird_Fly** | Seagull flight path | Nice-to-have |
| **Flag_Wave** | Fabric wind animation | Nice-to-have |
| **Rope_Sway** | Dock rope physics | Nice-to-have |

### Interactive Props
| Name | Description | Priority |
|------|-------------|----------|
| **Lamp_Flicker** | Slight light variation | Nice-to-have |
| **Wheel_Spin** | Ship wheel rotation | Nice-to-have |
| **Seaweed_Sway** | Kelp movement | Must-have |
| **Bubble_Rise** | Tank bubble columns | Must-have |

---

# 5. Roblox-Specific Guidelines

## 5.1 Mesh Complexity

### Triangle Budgets
| Asset Type | Max Triangles | Notes |
|------------|---------------|-------|
| **Lobster (Common)** | 800-1,200 | Most common, optimize heavily |
| **Lobster (Rare+)** | 1,200-1,800 | Slightly more detail allowed |
| **Lobster (Legendary+)** | 1,500-2,500 | Worth the extra detail |
| **Tank (Small)** | 200-400 | Very simple geometry |
| **Tank (Large)** | 400-800 | Modular pieces preferred |
| **Machinery** | 500-1,500 | Depends on size/importance |
| **NPC Head** | 600-1,000 | Face is important |
| **NPC Body** | 400-800 | Use Roblox packages where possible |
| **Decorations (Small)** | 100-300 | Keep simple |
| **Decorations (Large)** | 300-800 | Modular approach |
| **Environment Props** | 200-600 | Optimize aggressively |

### LOD (Level of Detail) Strategy
- **LOD0 (0-50 studs):** Full detail
- **LOD1 (50-150 studs):** 50% triangles
- **LOD2 (150+ studs):** 25% triangles or billboard

### Optimization Techniques
- Merge static geometry where possible
- Use decals instead of geometry for flat details
- Bake AO into vertex colors
- Avoid n-gons; stick to quads and tris
- Keep UV islands efficient (pack tightly)

---

## 5.2 Texture Resolution Guidelines

### Standard Resolutions
| Asset Type | Diffuse | Normal | Other |
|------------|---------|--------|-------|
| **Lobster** | 256x256 | None (use materials) | Emission: 128x128 |
| **Tank** | 256x256 | None | N/A |
| **Large Machinery** | 512x512 | Optional 256x256 | N/A |
| **NPCs** | 256x256 | None | N/A |
| **Environment (tiling)** | 512x512 | Optional 256x256 | N/A |
| **UI Elements** | 64-512px | N/A | Based on usage |

### Texture Atlas Strategy
- Group lobsters by rarity tier into shared atlases
- Maximum atlas size: 1024x1024
- Use texture compression (DXT1 for opaque, DXT5 for alpha)
- Create separate atlases for:
  - Common + Uncommon lobsters
  - Rare + Epic lobsters  
  - Legendary + Mythic + Cosmic lobsters
  - All tanks
  - All decorations
  - UI elements (multiple atlases by category)

### Color Palette Textures
Consider using a small color palette texture (32x32) and UV mapping to it for stylized lobsters. This:
- Reduces texture memory
- Ensures color consistency
- Makes recoloring trivial

---

## 5.3 Material Usage

### Recommended Roblox Materials
| Use Case | Material | SurfaceAppearance? |
|----------|----------|-------------------|
| **Lobster Shell** | SmoothPlastic | No (color only) |
| **Lobster (Shiny/Metallic)** | Glass or Neon | No |
| **Tank Glass** | Glass | No |
| **Tank Frame (Metal)** | Metal or DiamondPlate | Optional |
| **Tank Frame (Wood)** | Wood or WoodPlanks | No |
| **Dock Wood** | WoodPlanks | No |
| **Water Surface** | Water | Built-in |
| **Sand/Beach** | Sand | No |
| **Industrial Metal** | DiamondPlate | No |
| **Coral/Rock** | Slate or Granite | No |
| **NPC Skin** | SmoothPlastic | No |
| **NPC Clothing** | Fabric | No |

### Material Color Shifting
Leverage Roblox's material response to lighting:
- Glass has natural transparency and reflections
- Metal picks up environmental reflections
- Neon is unaffected by lighting (use for glows)
- SmoothPlastic is neutral and predictable

### SurfaceAppearance Usage
Use sparingly due to performance cost. Reserve for:
- Hero props (Neptune statue, major decorations)
- Premium/legendary tank materials
- Special event items

---

## 5.4 Performance Targets

### Scene Budgets
| Metric | Target | Maximum |
|--------|--------|---------|
| **Total Triangles (visible)** | 100,000 | 200,000 |
| **Draw Calls** | <200 | <400 |
| **Texture Memory** | <128MB | <256MB |
| **Active Particles** | <500 | <1,000 |
| **Shadow-casting lights** | 1 (sun) | 3 |
| **Point lights (non-shadow)** | <20 | <50 |

### Instance Optimization
- Use `StreamingEnabled` for large maps
- Mark purely visual parts as `CanCollide = false`
- Use `MeshPart` over `UnionOperation` where possible
- Group static geometry with `Model:PivotTo()` for batching

### Testing Targets
Test on minimum spec devices:
- iPhone 8 / Android equivalent
- 3-year-old mid-range PC
- Maintain 30 FPS minimum, target 60 FPS

---

## 5.5 File Naming Conventions

### 3D Assets
```
[Category]_[Name]_[Variant]_[LOD]
```
Examples:
- `Lobster_AtlanticRed_Adult_LOD0`
- `Tank_Industrial_Large_LOD1`
- `Deco_Anchor_Gold`
- `NPC_CaptainCrusty_Head`

### Textures
```
[AssetName]_[Type]_[Resolution]
```
Examples:
- `Lobster_CommonAtlas_D_256`
- `Tank_Wood_D_512`
- `UI_Icons_Currency_64`

### Animations
```
[Character]_[Action]_[Variant]
```
Examples:
- `Lobster_Idle_Breathe`
- `Lobster_Walk_Forward`
- `UI_Button_Press`

---

## 5.6 Asset Delivery Checklist

Before submitting any asset, verify:

### 3D Models
- [ ] Triangle count within budget
- [ ] Clean topology (no floating verts, no n-gons)
- [ ] Proper pivot point (center bottom for characters)
- [ ] No inverted normals
- [ ] LODs generated if required
- [ ] Collision mesh simplified
- [ ] Named according to convention

### Textures
- [ ] Resolution matches guidelines
- [ ] Power of 2 dimensions
- [ ] Proper color space (sRGB for diffuse)
- [ ] No unnecessary alpha channels
- [ ] Compressed appropriately
- [ ] Named according to convention

### Animations
- [ ] Loops seamlessly (if looping)
- [ ] Appropriate frame count (not excessive)
- [ ] Root motion handled correctly
- [ ] No jittering or popping
- [ ] Named according to convention

### UI Assets
- [ ] Exported @1x, @2x, @3x if needed
- [ ] Proper transparency (no white fringe)
- [ ] Consistent style with guide
- [ ] Touch targets minimum 44x44

---

# Appendix A: Quick Reference

## Priority Legend
- **Must-have:** Required for MVP launch
- **Nice-to-have:** Add in updates or if time permits

## Asset Count Summary

| Category | Must-Have | Nice-to-Have | Total |
|----------|-----------|--------------|-------|
| Lobster Models | 18 | 8 | 26 |
| Tank Models | 5 | 3 | 8 |
| Machinery | 6 | 4 | 10 |
| Decorations | 12 | 10 | 22 |
| NPCs | 4 | 4 | 8 |
| Environment Props | 18 | 10 | 28 |
| UI Icons | 42 | 8 | 50 |
| Textures | 18 | 6 | 24 |
| Animations | 48 | 22 | 70 |

**Estimated Total Assets:** ~246

---

# Appendix B: Revision History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2025-01-14 | Initial asset list created |

---

*This document is a living guide. Update as the project evolves.*

🦞 **Let's make some lobster magic!** 🦞
