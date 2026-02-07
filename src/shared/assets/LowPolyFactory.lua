--[[
	LowPolyFactory.lua
	Procedural low-poly asset generator for Lobster Tycoon
	
	Creates stylized low-poly versions of:
	- Lobsters (the stars!)
	- Palm trees & vegetation
	- Docks & structures
	- Boats
	- Lobster traps/cages
]]

local LowPolyFactory = {}

-- Color palettes for the low-poly style
local Palettes = {
	Lobster = {
		Common = {
			Body = Color3.fromRGB(180, 80, 60),    -- Classic red-brown
			Accent = Color3.fromRGB(220, 100, 70),
			Claws = Color3.fromRGB(200, 90, 65),
		},
		Rare = {
			Body = Color3.fromRGB(60, 120, 180),   -- Blue lobster!
			Accent = Color3.fromRGB(80, 140, 200),
			Claws = Color3.fromRGB(70, 130, 190),
		},
		Epic = {
			Body = Color3.fromRGB(255, 200, 80),   -- Golden
			Accent = Color3.fromRGB(255, 220, 100),
			Claws = Color3.fromRGB(255, 180, 60),
		},
		Legendary = {
			Body = Color3.fromRGB(180, 100, 220),  -- Cosmic purple
			Accent = Color3.fromRGB(200, 120, 240),
			Claws = Color3.fromRGB(160, 80, 200),
		},
	},
	
	Environment = {
		PalmTrunk = Color3.fromRGB(139, 90, 43),
		PalmLeaves = Color3.fromRGB(34, 139, 34),
		Sand = Color3.fromRGB(238, 214, 175),
		Water = Color3.fromRGB(64, 164, 223),
		Wood = Color3.fromRGB(160, 120, 80),
		Rope = Color3.fromRGB(139, 119, 101),
	}
}

-- Helper: Create a part with low-poly styling
local function createPart(properties)
	local part = Instance.new("Part")
	part.Anchored = properties.Anchored ~= false
	part.CanCollide = properties.CanCollide ~= false
	part.Size = properties.Size or Vector3.new(1, 1, 1)
	part.CFrame = properties.CFrame or CFrame.new()
	part.Color = properties.Color or Color3.new(1, 1, 1)
	part.Material = Enum.Material.SmoothPlastic -- Low-poly = flat shading
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.Name = properties.Name or "Part"
	part.Parent = properties.Parent
	return part
end

-- Helper: Create a wedge for angular low-poly shapes
local function createWedge(properties)
	local wedge = Instance.new("WedgePart")
	wedge.Anchored = properties.Anchored ~= false
	wedge.CanCollide = properties.CanCollide ~= false
	wedge.Size = properties.Size or Vector3.new(1, 1, 1)
	wedge.CFrame = properties.CFrame or CFrame.new()
	wedge.Color = properties.Color or Color3.new(1, 1, 1)
	wedge.Material = Enum.Material.SmoothPlastic
	wedge.Name = properties.Name or "Wedge"
	wedge.Parent = properties.Parent
	return wedge
end

--[[
	LOBSTER GENERATOR
	Creates a stylized low-poly lobster model
]]
function LowPolyFactory.CreateLobster(rarity, scale)
	rarity = rarity or "Common"
	scale = scale or 1
	local colors = Palettes.Lobster[rarity] or Palettes.Lobster.Common
	
	local model = Instance.new("Model")
	model.Name = rarity .. "Lobster"
	
	-- Body (main segment) - elongated hexagonal shape
	local body = createPart({
		Name = "Body",
		Size = Vector3.new(2, 0.8, 4) * scale,
		Color = colors.Body,
		Parent = model,
	})
	model.PrimaryPart = body
	
	-- Tail segments (3 segments getting smaller)
	for i = 1, 3 do
		local tailSize = Vector3.new(1.5 - i * 0.3, 0.5 - i * 0.1, 0.8) * scale
		createPart({
			Name = "Tail" .. i,
			Size = tailSize,
			CFrame = body.CFrame * CFrame.new(0, -0.1 * i, 2 + i * 0.7),
			Color = colors.Body,
			Parent = model,
		})
	end
	
	-- Tail fan (wedge shapes)
	local tailEnd = body.CFrame * CFrame.new(0, 0, 4.5)
	for angle = -30, 30, 15 do
		createWedge({
			Name = "TailFin",
			Size = Vector3.new(0.8, 0.1, 1) * scale,
			CFrame = tailEnd * CFrame.Angles(0, math.rad(angle), 0) * CFrame.new(0, 0, 0.5),
			Color = colors.Accent,
			Parent = model,
		})
	end
	
	-- Head
	createPart({
		Name = "Head",
		Size = Vector3.new(1.2, 0.7, 1.5) * scale,
		CFrame = body.CFrame * CFrame.new(0, 0.1, -2.5),
		Color = colors.Body,
		Parent = model,
	})
	
	-- Eyes (on stalks)
	for _, side in ipairs({-1, 1}) do
		-- Eye stalk
		createPart({
			Name = "EyeStalk",
			Size = Vector3.new(0.15, 0.4, 0.15) * scale,
			CFrame = body.CFrame * CFrame.new(side * 0.4, 0.5, -2.3),
			Color = colors.Body,
			Parent = model,
		})
		-- Eye
		createPart({
			Name = "Eye",
			Size = Vector3.new(0.25, 0.25, 0.25) * scale,
			CFrame = body.CFrame * CFrame.new(side * 0.4, 0.75, -2.3),
			Color = Color3.new(0, 0, 0),
			Parent = model,
		})
	end
	
	-- Claws (big low-poly pincers)
	for _, side in ipairs({-1, 1}) do
		-- Arm segment
		createPart({
			Name = "ClawArm",
			Size = Vector3.new(0.4, 0.4, 1.5) * scale,
			CFrame = body.CFrame * CFrame.new(side * 1.2, 0, -1) * CFrame.Angles(0, side * 0.3, 0),
			Color = colors.Claws,
			Parent = model,
		})
		-- Claw (two parts for pincer)
		local clawBase = body.CFrame * CFrame.new(side * 1.8, 0, -2) * CFrame.Angles(0, side * 0.5, 0)
		createPart({
			Name = "ClawTop",
			Size = Vector3.new(0.6, 0.3, 1.2) * scale,
			CFrame = clawBase * CFrame.new(0, 0.15, 0),
			Color = colors.Claws,
			Parent = model,
		})
		createPart({
			Name = "ClawBottom",
			Size = Vector3.new(0.5, 0.25, 1) * scale,
			CFrame = clawBase * CFrame.new(0, -0.12, 0.1),
			Color = colors.Claws,
			Parent = model,
		})
	end
	
	-- Legs (4 pairs)
	for i = 1, 4 do
		for _, side in ipairs({-1, 1}) do
			createPart({
				Name = "Leg",
				Size = Vector3.new(0.15, 0.15, 0.8) * scale,
				CFrame = body.CFrame * CFrame.new(side * 1, -0.3, 1 - i * 0.8) 
					* CFrame.Angles(0.5, side * 0.3, 0),
				Color = colors.Body,
				Parent = model,
			})
		end
	end
	
	-- Antennae
	for _, side in ipairs({-1, 1}) do
		createPart({
			Name = "Antenna",
			Size = Vector3.new(0.08, 0.08, 2) * scale,
			CFrame = body.CFrame * CFrame.new(side * 0.3, 0.2, -3.5) 
				* CFrame.Angles(-0.2, side * 0.4, 0),
			Color = colors.Accent,
			Parent = model,
		})
	end
	
	return model
end

--[[
	PALM TREE GENERATOR
	Creates stylized low-poly palm trees
]]
function LowPolyFactory.CreatePalmTree(height, lean)
	height = height or 15
	lean = lean or 0.2
	
	local model = Instance.new("Model")
	model.Name = "PalmTree"
	
	-- Trunk (tapered, slightly curved)
	local segments = 5
	local baseWidth = 1.5
	local topWidth = 0.8
	
	for i = 1, segments do
		local progress = (i - 1) / (segments - 1)
		local width = baseWidth - (baseWidth - topWidth) * progress
		local segmentHeight = height / segments
		local xOffset = lean * progress * height * 0.3
		
		local trunk = createPart({
			Name = "Trunk" .. i,
			Size = Vector3.new(width, segmentHeight, width),
			CFrame = CFrame.new(xOffset, segmentHeight * (i - 0.5), 0),
			Color = Palettes.Environment.PalmTrunk,
			Parent = model,
		})
		
		if i == 1 then
			model.PrimaryPart = trunk
		end
	end
	
	-- Palm fronds (low-poly leaf shapes)
	local frondCount = 7
	local topPos = Vector3.new(lean * height * 0.3, height, 0)
	
	for i = 1, frondCount do
		local angle = (i / frondCount) * math.pi * 2
		local droop = 0.4 + math.random() * 0.3
		
		-- Each frond is a stretched wedge
		local frond = createWedge({
			Name = "Frond" .. i,
			Size = Vector3.new(1.5, 0.2, 6 + math.random() * 2),
			CFrame = CFrame.new(topPos) 
				* CFrame.Angles(0, angle, 0) 
				* CFrame.Angles(droop, 0, 0)
				* CFrame.new(0, 0, 3),
			Color = Palettes.Environment.PalmLeaves,
			Parent = model,
		})
	end
	
	-- Coconuts (optional)
	if math.random() > 0.5 then
		for i = 1, math.random(2, 4) do
			local angle = math.random() * math.pi * 2
			createPart({
				Name = "Coconut",
				Size = Vector3.new(0.6, 0.7, 0.6),
				CFrame = CFrame.new(topPos) * CFrame.new(math.cos(angle) * 0.5, -0.5, math.sin(angle) * 0.5),
				Color = Color3.fromRGB(101, 67, 33),
				Parent = model,
			})
		end
	end
	
	return model
end

--[[
	DOCK GENERATOR
	Creates a wooden dock/pier
]]
function LowPolyFactory.CreateDock(length, width)
	length = length or 20
	width = width or 6
	
	local model = Instance.new("Model")
	model.Name = "Dock"
	
	local plankWidth = 0.8
	local plankCount = math.floor(length / plankWidth)
	
	-- Main planks
	for i = 1, plankCount do
		local plank = createPart({
			Name = "Plank" .. i,
			Size = Vector3.new(width, 0.3, plankWidth - 0.05),
			CFrame = CFrame.new(0, 2, (i - plankCount/2) * plankWidth),
			Color = Palettes.Environment.Wood,
			Parent = model,
		})
		
		-- Slight color variation for visual interest
		local variation = 0.9 + math.random() * 0.2
		plank.Color = Color3.new(
			Palettes.Environment.Wood.R * variation,
			Palettes.Environment.Wood.G * variation,
			Palettes.Environment.Wood.B * variation
		)
		
		if i == 1 then
			model.PrimaryPart = plank
		end
	end
	
	-- Support posts
	local postSpacing = 5
	for z = -length/2, length/2, postSpacing do
		for _, xOffset in ipairs({-width/2 + 0.3, width/2 - 0.3}) do
			createPart({
				Name = "Post",
				Size = Vector3.new(0.5, 5, 0.5),
				CFrame = CFrame.new(xOffset, -0.5, z),
				Color = Palettes.Environment.Wood,
				Parent = model,
			})
		end
	end
	
	-- Rope railings
	for _, xOffset in ipairs({-width/2 + 0.2, width/2 - 0.2}) do
		createPart({
			Name = "Rope",
			Size = Vector3.new(0.15, 0.15, length),
			CFrame = CFrame.new(xOffset, 3, 0),
			Color = Palettes.Environment.Rope,
			Parent = model,
		})
	end
	
	return model
end

--[[
	LOBSTER TRAP GENERATOR
	Creates a wire lobster cage/trap
]]
function LowPolyFactory.CreateLobsterTrap(tier)
	tier = tier or 1
	local scale = 1 + (tier - 1) * 0.2
	
	local model = Instance.new("Model")
	model.Name = "LobsterTrap_T" .. tier
	
	local baseSize = Vector3.new(3, 2, 4) * scale
	local wireThickness = 0.1
	
	-- Tier-based colors
	local frameColors = {
		Color3.fromRGB(100, 100, 100),  -- Basic gray
		Color3.fromRGB(80, 120, 80),     -- Green
		Color3.fromRGB(80, 80, 140),     -- Blue
		Color3.fromRGB(140, 100, 60),    -- Bronze
		Color3.fromRGB(180, 150, 50),    -- Gold
	}
	local frameColor = frameColors[math.min(tier, #frameColors)]
	
	-- Frame edges (wireframe cube)
	local edges = {
		-- Bottom rectangle
		{Vector3.new(0, 0, 0), Vector3.new(baseSize.X, wireThickness, wireThickness)},
		{Vector3.new(0, 0, baseSize.Z - wireThickness), Vector3.new(baseSize.X, wireThickness, wireThickness)},
		{Vector3.new(0, 0, 0), Vector3.new(wireThickness, wireThickness, baseSize.Z)},
		{Vector3.new(baseSize.X - wireThickness, 0, 0), Vector3.new(wireThickness, wireThickness, baseSize.Z)},
		-- Top rectangle
		{Vector3.new(0, baseSize.Y, 0), Vector3.new(baseSize.X, wireThickness, wireThickness)},
		{Vector3.new(0, baseSize.Y, baseSize.Z - wireThickness), Vector3.new(baseSize.X, wireThickness, wireThickness)},
		{Vector3.new(0, baseSize.Y, 0), Vector3.new(wireThickness, wireThickness, baseSize.Z)},
		{Vector3.new(baseSize.X - wireThickness, baseSize.Y, 0), Vector3.new(wireThickness, wireThickness, baseSize.Z)},
		-- Vertical posts
		{Vector3.new(0, 0, 0), Vector3.new(wireThickness, baseSize.Y, wireThickness)},
		{Vector3.new(baseSize.X - wireThickness, 0, 0), Vector3.new(wireThickness, baseSize.Y, wireThickness)},
		{Vector3.new(0, 0, baseSize.Z - wireThickness), Vector3.new(wireThickness, baseSize.Y, wireThickness)},
		{Vector3.new(baseSize.X - wireThickness, 0, baseSize.Z - wireThickness), Vector3.new(wireThickness, baseSize.Y, wireThickness)},
	}
	
	local offset = -baseSize / 2
	for i, edge in ipairs(edges) do
		local pos, size = edge[1], edge[2]
		createPart({
			Name = "Frame" .. i,
			Size = size,
			CFrame = CFrame.new(offset + pos + size/2),
			Color = frameColor,
			Parent = model,
		})
	end
	
	-- Mesh/netting (simplified as semi-transparent planes)
	local netting = createPart({
		Name = "Netting",
		Size = Vector3.new(baseSize.X - 0.2, baseSize.Y - 0.2, baseSize.Z - 0.2),
		CFrame = CFrame.new(0, baseSize.Y/2, 0),
		Color = Color3.fromRGB(60, 60, 60),
		Parent = model,
	})
	netting.Transparency = 0.7
	netting.CanCollide = false
	
	-- Entry funnel (cone shape on one end)
	createPart({
		Name = "EntryFunnel",
		Size = Vector3.new(1, 1, 0.5) * scale,
		CFrame = CFrame.new(0, baseSize.Y/2, -baseSize.Z/2 + 0.3),
		Color = frameColor,
		Parent = model,
	})
	
	model.PrimaryPart = netting
	
	return model
end

return LowPolyFactory
