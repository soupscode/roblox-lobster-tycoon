--[[
	IslandGenerator.lua
	Procedural island terrain for Lobster Tycoon
	
	Creates a tropical archipelago with:
	- Main island (player's tycoon base)
	- Scattered smaller islands (expansion zones)
	- Ocean floor with lobster habitats
	- Beach transitions and rocky outcrops
]]

local Terrain = game.Workspace.Terrain
local SEED = tick() -- Random seed, or set fixed for consistent world

-- Configuration
local Config = {
	-- Main island
	MainIsland = {
		Position = Vector3.new(0, 0, 0),
		Radius = 200,
		Height = 40,
		BeachWidth = 30,
	},
	
	-- Small islands around the main one
	SmallIslands = {
		Count = 6,
		MinRadius = 30,
		MaxRadius = 60,
		MinDistance = 250,
		MaxDistance = 400,
		MinHeight = 15,
		MaxHeight = 30,
	},
	
	-- Ocean settings
	Ocean = {
		Depth = -50,
		FloorVariation = 15,
	},
	
	-- Resolution (lower = faster generation, blockier look)
	Resolution = 4,
	
	-- Materials
	Materials = {
		Grass = Enum.Material.Grass,
		Sand = Enum.Material.Sand,
		Rock = Enum.Material.Rock,
		Water = Enum.Material.Water,
		Mud = Enum.Material.Mud, -- Ocean floor for lobster habitats
	}
}

-- Noise functions for natural-looking terrain
local function noise2D(x, z, scale, seed)
	return math.noise(x / scale, z / scale, seed)
end

local function fractalNoise(x, z, octaves, persistence, scale, seed)
	local total = 0
	local frequency = 1
	local amplitude = 1
	local maxValue = 0
	
	for i = 1, octaves do
		total = total + noise2D(x * frequency, z * frequency, scale, seed + i) * amplitude
		maxValue = maxValue + amplitude
		amplitude = amplitude * persistence
		frequency = frequency * 2
	end
	
	return total / maxValue
end

-- Generate a single island
local function generateIsland(centerX, centerZ, radius, maxHeight, beachWidth)
	local resolution = Config.Resolution
	
	for x = centerX - radius - beachWidth, centerX + radius + beachWidth, resolution do
		for z = centerZ - radius - beachWidth, centerZ + radius + beachWidth, resolution do
			local distFromCenter = math.sqrt((x - centerX)^2 + (z - centerZ)^2)
			
			if distFromCenter <= radius + beachWidth then
				-- Calculate height based on distance from center
				local normalizedDist = distFromCenter / radius
				local falloff = math.max(0, 1 - normalizedDist^2)
				
				-- Add noise for natural variation
				local noiseValue = fractalNoise(x, z, 4, 0.5, 50, SEED)
				local height = falloff * maxHeight * (0.7 + 0.3 * noiseValue)
				
				-- Determine material based on height and position
				local material
				if distFromCenter > radius - beachWidth * 0.5 then
					material = Config.Materials.Sand
				elseif height < maxHeight * 0.3 then
					material = Config.Materials.Sand
				elseif noiseValue > 0.3 and height > maxHeight * 0.7 then
					material = Config.Materials.Rock
				else
					material = Config.Materials.Grass
				end
				
				-- Fill terrain
				if height > 0.5 then
					local region = Region3.new(
						Vector3.new(x - resolution/2, 0, z - resolution/2),
						Vector3.new(x + resolution/2, height, z + resolution/2)
					):ExpandToGrid(resolution)
					
					Terrain:FillRegion(region, resolution, material)
				end
			end
		end
	end
end

-- Generate ocean floor with lobster habitat zones
local function generateOceanFloor(worldSize)
	local resolution = Config.Resolution * 2 -- Lower res for ocean floor
	local halfSize = worldSize / 2
	
	for x = -halfSize, halfSize, resolution do
		for z = -halfSize, halfSize, resolution do
			local noiseValue = fractalNoise(x, z, 3, 0.5, 100, SEED + 1000)
			local depth = Config.Ocean.Depth + noiseValue * Config.Ocean.FloorVariation
			
			-- Create uneven ocean floor
			local region = Region3.new(
				Vector3.new(x - resolution/2, depth - 5, z - resolution/2),
				Vector3.new(x + resolution/2, depth, z + resolution/2)
			):ExpandToGrid(resolution)
			
			Terrain:FillRegion(region, resolution, Config.Materials.Mud)
		end
	end
end

-- Generate rocky outcrops (good for lobster spawns)
local function generateRockyOutcrops(count, worldSize)
	local halfSize = worldSize / 2
	
	for i = 1, count do
		local angle = (i / count) * math.pi * 2 + math.random() * 0.5
		local distance = 150 + math.random() * 200
		local x = math.cos(angle) * distance
		local z = math.sin(angle) * distance
		
		-- Small rocky formation
		local rockRadius = 10 + math.random() * 15
		local rockHeight = -20 + math.random() * 25
		
		for rx = -rockRadius, rockRadius, Config.Resolution do
			for rz = -rockRadius, rockRadius, Config.Resolution do
				local dist = math.sqrt(rx^2 + rz^2)
				if dist <= rockRadius then
					local h = (1 - (dist/rockRadius)^2) * rockHeight
					if rockHeight > 0 then
						-- Above water rock
						local region = Region3.new(
							Vector3.new(x + rx - 2, -5, z + rz - 2),
							Vector3.new(x + rx + 2, h, z + rz + 2)
						):ExpandToGrid(Config.Resolution)
						Terrain:FillRegion(region, Config.Resolution, Config.Materials.Rock)
					else
						-- Underwater rock formation
						local region = Region3.new(
							Vector3.new(x + rx - 2, h, z + rz - 2),
							Vector3.new(x + rx + 2, -10, z + rz + 2)
						):ExpandToGrid(Config.Resolution)
						Terrain:FillRegion(region, Config.Resolution, Config.Materials.Rock)
					end
				end
			end
		end
	end
end

-- Main generation function
local function generate()
	print("[IslandGenerator] Starting terrain generation...")
	local startTime = tick()
	
	-- Clear existing terrain
	Terrain:Clear()
	
	-- Set water level
	game.Workspace.Terrain.WaterWaveSize = 0.3
	game.Workspace.Terrain.WaterWaveSpeed = 10
	game.Workspace.Terrain.WaterReflectance = 0.5
	game.Workspace.Terrain.WaterTransparency = 0.7
	game.Workspace.Terrain.WaterColor = Color3.fromRGB(40, 120, 180)
	
	-- Fill ocean
	local worldSize = 1000
	local oceanRegion = Region3.new(
		Vector3.new(-worldSize/2, Config.Ocean.Depth - 20, -worldSize/2),
		Vector3.new(worldSize/2, 0, worldSize/2)
	):ExpandToGrid(4)
	Terrain:FillRegion(oceanRegion, 4, Enum.Material.Water)
	
	-- Generate ocean floor
	print("[IslandGenerator] Generating ocean floor...")
	generateOceanFloor(worldSize)
	
	-- Generate main island
	print("[IslandGenerator] Generating main island...")
	generateIsland(
		Config.MainIsland.Position.X,
		Config.MainIsland.Position.Z,
		Config.MainIsland.Radius,
		Config.MainIsland.Height,
		Config.MainIsland.BeachWidth
	)
	
	-- Generate small islands
	print("[IslandGenerator] Generating small islands...")
	for i = 1, Config.SmallIslands.Count do
		local angle = (i / Config.SmallIslands.Count) * math.pi * 2
		local distance = Config.SmallIslands.MinDistance + 
			math.random() * (Config.SmallIslands.MaxDistance - Config.SmallIslands.MinDistance)
		
		local x = math.cos(angle) * distance
		local z = math.sin(angle) * distance
		local radius = Config.SmallIslands.MinRadius + 
			math.random() * (Config.SmallIslands.MaxRadius - Config.SmallIslands.MinRadius)
		local height = Config.SmallIslands.MinHeight + 
			math.random() * (Config.SmallIslands.MaxHeight - Config.SmallIslands.MinHeight)
		
		generateIsland(x, z, radius, height, 15)
	end
	
	-- Generate rocky outcrops
	print("[IslandGenerator] Generating rocky outcrops...")
	generateRockyOutcrops(12, worldSize)
	
	local elapsed = tick() - startTime
	print(string.format("[IslandGenerator] Terrain generation complete! (%.2fs)", elapsed))
end

return {
	Generate = generate,
	Config = Config,
	SetSeed = function(seed) SEED = seed end,
}
