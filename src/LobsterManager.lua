--[[
	LobsterManager.lua
	Handles lobster spawning, breeding, and rarity system for Lobster Tycoon
	Author: OpenClaw AI
	Date: 2025
]]

local LobsterManager = {}
LobsterManager.__index = LobsterManager

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

-- Configuration
local LOBSTER_CONFIG = {
	-- Rarity tiers (higher = rarer)
	Rarities = {
		Common = {
			Name = "Common",
			Color = Color3.fromRGB(150, 150, 150),
			SpawnChance = 0.60, -- 60%
			ValueMultiplier = 1,
			BreedTime = 30 -- seconds
		},
		Uncommon = {
			Name = "Uncommon",
			Color = Color3.fromRGB(0, 255, 0),
			SpawnChance = 0.25, -- 25%
			ValueMultiplier = 2,
			BreedTime = 60
		},
		Rare = {
			Name = "Rare",
			Color = Color3.fromRGB(0, 100, 255),
			SpawnChance = 0.10, -- 10%
			ValueMultiplier = 5,
			BreedTime = 120
		},
		Epic = {
			Name = "Epic",
			Color = Color3.fromRGB(150, 0, 255),
			SpawnChance = 0.04, -- 4%
			ValueMultiplier = 10,
			BreedTime = 300
		},
		Legendary = {
			Name = "Legendary",
			Color = Color3.fromRGB(255, 215, 0),
			SpawnChance = 0.01, -- 1%
			ValueMultiplier = 25,
			BreedTime = 600
		}
	},
	
	BaseValue = 10, -- Base cash value per lobster
	SpawnCooldown = 5, -- Seconds between spawns
}

-- Create a new LobsterManager instance for a player
function LobsterManager.new(player, tycoonModel)
	local self = setmetatable({}, LobsterManager)
	
	self.Player = player
	self.TycoonModel = tycoonModel
	self.SpawnLocation = tycoonModel:FindFirstChild("LobsterSpawn")
	self.ActiveLobsters = {}
	self.BreedingPairs = {}
	self.TotalLobstersSpawned = 0
	
	return self
end

-- Determine rarity based on weighted random selection
function LobsterManager:RollRarity()
	local roll = math.random()
	local cumulativeChance = 0
	
	-- Check from rarest to most common
	local rarityOrder = {"Legendary", "Epic", "Rare", "Uncommon", "Common"}
	
	for _, rarityName in ipairs(rarityOrder) do
		local rarity = LOBSTER_CONFIG.Rarities[rarityName]
		cumulativeChance = cumulativeChance + rarity.SpawnChance
		
		if roll <= cumulativeChance then
			return rarityName, rarity
		end
	end
	
	-- Fallback to Common
	return "Common", LOBSTER_CONFIG.Rarities.Common
end

-- Spawn a lobster with specified or random rarity
function LobsterManager:SpawnLobster(rarityName)
	if not self.SpawnLocation then
		warn("No LobsterSpawn location found in tycoon!")
		return nil
	end
	
	-- Get rarity
	local rarity
	if rarityName then
		rarity = LOBSTER_CONFIG.Rarities[rarityName]
		rarityName = rarityName
	else
		rarityName, rarity = self:RollRarity()
	end
	
	-- Create lobster model (simple part for now - replace with actual model)
	local lobster = Instance.new("Part")
	lobster.Name = rarityName .. "Lobster"
	lobster.Size = Vector3.new(2, 1, 3)
	lobster.Color = rarity.Color
	lobster.Material = Enum.Material.SmoothPlastic
	lobster.Anchored = false
	lobster.CanCollide = true
	
	-- Add mesh or load custom model here
	local mesh = Instance.new("SpecialMesh", lobster)
	mesh.MeshType = Enum.MeshType.FileMesh
	mesh.MeshId = "rbxassetid://YOUR_LOBSTER_MESH_ID" -- Replace with actual mesh
	
	-- Store metadata
	local lobsterData = Instance.new("Folder", lobster)
	lobsterData.Name = "LobsterData"
	
	local rarityValue = Instance.new("StringValue", lobsterData)
	rarityValue.Name = "Rarity"
	rarityValue.Value = rarityName
	
	local valueAmount = Instance.new("IntValue", lobsterData)
	valueAmount.Name = "Value"
	valueAmount.Value = LOBSTER_CONFIG.BaseValue * rarity.ValueMultiplier
	
	local ownerValue = Instance.new("ObjectValue", lobsterData)
	ownerValue.Name = "Owner"
	ownerValue.Value = self.Player
	
	-- Position lobster
	local spawnCFrame = self.SpawnLocation.CFrame * CFrame.new(
		math.random(-5, 5),
		5,
		math.random(-5, 5)
	)
	lobster.CFrame = spawnCFrame
	
	-- Parent to workspace
	lobster.Parent = workspace.Lobsters or workspace
	
	-- Track active lobster
	table.insert(self.ActiveLobsters, lobster)
	self.TotalLobstersSpawned = self.TotalLobstersSpawned + 1
	
	print(string.format("[LobsterManager] %s spawned a %s lobster! (Value: $%d)", 
		self.Player.Name, rarityName, valueAmount.Value))
	
	return lobster
end

-- Breed two lobsters to create offspring
function LobsterManager:BreedLobsters(lobster1, lobster2)
	if not lobster1 or not lobster2 then
		return false, "Invalid lobsters"
	end
	
	local rarity1 = lobster1:FindFirstChild("LobsterData") and 
		lobster1.LobsterData:FindFirstChild("Rarity")
	local rarity2 = lobster2:FindFirstChild("LobsterData") and 
		lobster2.LobsterData:FindFirstChild("Rarity")
	
	if not rarity1 or not rarity2 then
		return false, "Lobsters missing data"
	end
	
	-- Check if already breeding
	local breedingKey = lobster1:GetDebugId() .. "_" .. lobster2:GetDebugId()
	if self.BreedingPairs[breedingKey] then
		return false, "Already breeding"
	end
	
	-- Get breed time (use higher rarity's breed time)
	local config1 = LOBSTER_CONFIG.Rarities[rarity1.Value]
	local config2 = LOBSTER_CONFIG.Rarities[rarity2.Value]
	local breedTime = math.max(config1.BreedTime, config2.BreedTime)
	
	-- Mark as breeding
	self.BreedingPairs[breedingKey] = true
	
	-- Breeding logic: 50% chance to get either parent's rarity, small chance for upgrade
	task.spawn(function()
		task.wait(breedTime)
		
		if lobster1.Parent and lobster2.Parent then
			local roll = math.random()
			local offspringRarity
			
			if roll < 0.05 then
				-- 5% chance to get rarer offspring
				offspringRarity = self:GetHigherRarity(rarity1.Value, rarity2.Value)
			elseif roll < 0.55 then
				offspringRarity = rarity1.Value
			else
				offspringRarity = rarity2.Value
			end
			
			self:SpawnLobster(offspringRarity)
			print(string.format("[LobsterManager] Breeding complete! New %s lobster born!", offspringRarity))
		end
		
		self.BreedingPairs[breedingKey] = nil
	end)
	
	return true, "Breeding started"
end

-- Get next higher rarity tier
function LobsterManager:GetHigherRarity(currentRarity, compareRarity)
	local rarityTiers = {"Common", "Uncommon", "Rare", "Epic", "Legendary"}
	
	local currentIndex = table.find(rarityTiers, currentRarity) or 1
	local compareIndex = table.find(rarityTiers, compareRarity) or 1
	
	local higherIndex = math.max(currentIndex, compareIndex)
	local nextIndex = math.min(higherIndex + 1, #rarityTiers)
	
	return rarityTiers[nextIndex]
end

-- Auto-spawner loop
function LobsterManager:StartAutoSpawner(interval)
	interval = interval or LOBSTER_CONFIG.SpawnCooldown
	
	task.spawn(function()
		while self.Player.Parent do
			self:SpawnLobster()
			task.wait(interval)
		end
	end)
end

-- Clean up lobsters when player leaves
function LobsterManager:Cleanup()
	for _, lobster in ipairs(self.ActiveLobsters) do
		if lobster and lobster.Parent then
			lobster:Destroy()
		end
	end
	
	self.ActiveLobsters = {}
	self.BreedingPairs = {}
	print("[LobsterManager] Cleaned up for player:", self.Player.Name)
end

return LobsterManager
