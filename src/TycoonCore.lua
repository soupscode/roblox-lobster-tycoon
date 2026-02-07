--[[
	TycoonCore.lua
	Core tycoon functionality: money system, upgrades, droppers, and collectors
	Author: OpenClaw AI
	Date: 2025
]]

local TycoonCore = {}
TycoonCore.__index = TycoonCore

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

-- Module dependencies
local DataStore = require(script.Parent.DataStore)

-- Configuration
local TYCOON_CONFIG = {
	StartingCash = 100,
	
	-- Upgrade costs (exponential scaling)
	Upgrades = {
		SpeedBoost = {
			Name = "Speed Boost",
			BaseCost = 500,
			Multiplier = 1.5,
			MaxLevel = 10
		},
		ValueBoost = {
			Name = "Value Multiplier",
			BaseCost = 1000,
			Multiplier = 1.8,
			MaxLevel = 10
		},
		AutoCollector = {
			Name = "Auto Collector",
			BaseCost = 2500,
			Multiplier = 2.0,
			MaxLevel = 5
		}
	},
	
	-- Dropper/Conveyor configuration
	DropperConfig = {
		DropInterval = 3, -- seconds
		ConveyorSpeed = 16, -- studs/second
		ItemValue = 10 -- base value
	}
}

-- Create new tycoon instance for a player
function TycoonCore.new(player, tycoonModel)
	local self = setmetatable({}, TycoonCore)
	
	self.Player = player
	self.TycoonModel = tycoonModel
	self.Cash = TYCOON_CONFIG.StartingCash
	self.Upgrades = {}
	self.Droppers = {}
	self.Collectors = {}
	self.IsActive = true
	
	-- Initialize upgrades
	for upgradeName, _ in pairs(TYCOON_CONFIG.Upgrades) do
		self.Upgrades[upgradeName] = 0 -- level
	end
	
	-- Setup UI
	self:SetupUI()
	
	-- Setup droppers and collectors
	self:SetupDroppers()
	self:SetupCollectors()
	
	return self
end

-- Load player data
function TycoonCore:LoadData()
	local data = DataStore:LoadPlayerData(self.Player)
	
	if data then
		self.Cash = data.Cash or TYCOON_CONFIG.StartingCash
		self.Upgrades = data.Upgrades or self.Upgrades
		
		print("[TycoonCore] Loaded data for", self.Player.Name, "Cash:", self.Cash)
	else
		print("[TycoonCore] New player:", self.Player.Name)
	end
	
	self:UpdateUI()
end

-- Save player data
function TycoonCore:SaveData()
	local data = {
		Cash = self.Cash,
		Upgrades = self.Upgrades
	}
	
	DataStore:SavePlayerData(self.Player, data)
end

-- Add cash to player
function TycoonCore:AddCash(amount)
	if amount <= 0 then return end
	
	self.Cash = self.Cash + amount
	self:UpdateUI()
	
	-- Fire remote to client for UI feedback
	local cashEvent = ReplicatedStorage:FindFirstChild("CashChanged")
	if cashEvent then
		cashEvent:FireClient(self.Player, self.Cash, amount)
	end
end

-- Spend cash (returns true if successful)
function TycoonCore:SpendCash(amount)
	if self.Cash >= amount then
		self.Cash = self.Cash - amount
		self:UpdateUI()
		return true
	end
	return false
end

-- Calculate upgrade cost
function TycoonCore:GetUpgradeCost(upgradeName)
	local config = TYCOON_CONFIG.Upgrades[upgradeName]
	if not config then return nil end
	
	local currentLevel = self.Upgrades[upgradeName] or 0
	
	if currentLevel >= config.MaxLevel then
		return nil -- Max level reached
	end
	
	return math.floor(config.BaseCost * (config.Multiplier ^ currentLevel))
end

-- Purchase an upgrade
function TycoonCore:PurchaseUpgrade(upgradeName)
	local cost = self:GetUpgradeCost(upgradeName)
	
	if not cost then
		return false, "Max level or invalid upgrade"
	end
	
	if self:SpendCash(cost) then
		self.Upgrades[upgradeName] = (self.Upgrades[upgradeName] or 0) + 1
		self:SaveData()
		
		print(string.format("[TycoonCore] %s purchased %s (Level %d) for $%d",
			self.Player.Name, upgradeName, self.Upgrades[upgradeName], cost))
		
		return true, "Upgrade purchased"
	else
		return false, "Not enough cash"
	end
end

-- Setup droppers (spawn items on conveyor)
function TycoonCore:SetupDroppers()
	local droppersFolder = self.TycoonModel:FindFirstChild("Droppers")
	if not droppersFolder then return end
	
	for _, dropper in ipairs(droppersFolder:GetChildren()) do
		if dropper:IsA("BasePart") then
			self:StartDropper(dropper)
		end
	end
end

-- Start a dropper loop
function TycoonCore:StartDropper(dropper)
	table.insert(self.Droppers, dropper)
	
	task.spawn(function()
		while self.IsActive and dropper.Parent do
			-- Get speed boost multiplier
			local speedLevel = self.Upgrades.SpeedBoost or 0
			local speedMultiplier = 1 + (speedLevel * 0.2) -- 20% per level
			local dropInterval = TYCOON_CONFIG.DropperConfig.DropInterval / speedMultiplier
			
			-- Create dropped item
			self:DropItem(dropper)
			
			task.wait(dropInterval)
		end
	end)
end

-- Drop an item from a dropper
function TycoonCore:DropItem(dropper)
	local item = Instance.new("Part")
	item.Name = "DroppedItem"
	item.Size = Vector3.new(1, 1, 1)
	item.Color = Color3.fromRGB(255, 100, 50)
	item.Material = Enum.Material.Neon
	item.CanCollide = true
	
	-- Store value
	local valueLevel = self.Upgrades.ValueBoost or 0
	local valueMultiplier = 1 + (valueLevel * 0.3) -- 30% per level
	
	local value = Instance.new("IntValue", item)
	value.Name = "CashValue"
	value.Value = math.floor(TYCOON_CONFIG.DropperConfig.ItemValue * valueMultiplier)
	
	local owner = Instance.new("ObjectValue", item)
	owner.Name = "Owner"
	owner.Value = self.Player
	
	-- Position above dropper
	item.CFrame = dropper.CFrame * CFrame.new(0, 5, 0)
	item.Parent = workspace
	
	-- Cleanup after 30 seconds if not collected
	task.delay(30, function()
		if item and item.Parent then
			item:Destroy()
		end
	end)
end

-- Setup collectors (detect items and give cash)
function TycoonCore:SetupCollectors()
	local collectorsFolder = self.TycoonModel:FindFirstChild("Collectors")
	if not collectorsFolder then return end
	
	for _, collector in ipairs(collectorsFolder:GetChildren()) do
		if collector:IsA("BasePart") then
			self:StartCollector(collector)
		end
	end
end

-- Start a collector
function TycoonCore:StartCollector(collector)
	table.insert(self.Collectors, collector)
	
	-- Detect items touching collector
	collector.Touched:Connect(function(hit)
		if not self.IsActive then return end
		
		if hit.Name == "DroppedItem" then
			local owner = hit:FindFirstChild("Owner")
			local cashValue = hit:FindFirstChild("CashValue")
			
			-- Check ownership
			if owner and owner.Value == self.Player and cashValue then
				self:AddCash(cashValue.Value)
				hit:Destroy()
				
				-- Visual feedback
				self:SpawnCollectEffect(collector.Position)
			end
		end
	end)
	
	-- Auto-collector upgrade functionality
	if self.Upgrades.AutoCollector and self.Upgrades.AutoCollector > 0 then
		self:StartAutoCollector(collector)
	end
end

-- Auto collector (pulls items in range)
function TycoonCore:StartAutoCollector(collector)
	task.spawn(function()
		while self.IsActive and collector.Parent do
			local autoLevel = self.Upgrades.AutoCollector or 0
			if autoLevel > 0 then
				local range = 10 + (autoLevel * 5) -- Increase range with level
				
				-- Find nearby items
				local region = Region3.new(
					collector.Position - Vector3.new(range, range, range),
					collector.Position + Vector3.new(range, range, range)
				)
				
				for _, part in ipairs(workspace:GetPartsInRegion3(region, collector, 100)) do
					if part.Name == "DroppedItem" then
						local owner = part:FindFirstChild("Owner")
						if owner and owner.Value == self.Player then
							-- Pull item towards collector
							local direction = (collector.Position - part.Position).Unit
							part.AssemblyLinearVelocity = direction * 20
						end
					end
				end
			end
			
			task.wait(0.5)
		end
	end)
end

-- Visual effect when collecting
function TycoonCore:SpawnCollectEffect(position)
	local effect = Instance.new("Part")
	effect.Name = "CollectEffect"
	effect.Size = Vector3.new(2, 2, 2)
	effect.Transparency = 0.5
	effect.Color = Color3.fromRGB(0, 255, 0)
	effect.Material = Enum.Material.Neon
	effect.Anchored = true
	effect.CanCollide = false
	effect.CFrame = CFrame.new(position)
	effect.Parent = workspace
	
	-- Fade out
	task.spawn(function()
		for i = 0, 10 do
			effect.Transparency = 0.5 + (i * 0.05)
			effect.Size = effect.Size + Vector3.new(0.2, 0.2, 0.2)
			task.wait(0.05)
		end
		effect:Destroy()
	end)
end

-- Setup player UI
function TycoonCore:SetupUI()
	local playerGui = self.Player:WaitForChild("PlayerGui")
	
	-- Create ScreenGui (or use existing)
	local screenGui = playerGui:FindFirstChild("TycoonUI") or Instance.new("ScreenGui")
	screenGui.Name = "TycoonUI"
	screenGui.ResetOnSpawn = false
	screenGui.Parent = playerGui
	
	-- Cash display
	local cashLabel = Instance.new("TextLabel")
	cashLabel.Name = "CashDisplay"
	cashLabel.Size = UDim2.new(0, 200, 0, 50)
	cashLabel.Position = UDim2.new(0, 10, 0, 10)
	cashLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	cashLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	cashLabel.Font = Enum.Font.GothamBold
	cashLabel.TextSize = 24
	cashLabel.Text = "$" .. self.Cash
	cashLabel.Parent = screenGui
end

-- Update UI with current values
function TycoonCore:UpdateUI()
	local playerGui = self.Player:FindFirstChild("PlayerGui")
	if not playerGui then return end
	
	local cashDisplay = playerGui:FindFirstChild("TycoonUI") and 
		playerGui.TycoonUI:FindFirstChild("CashDisplay")
	
	if cashDisplay then
		cashDisplay.Text = "$" .. self.Cash
	end
end

-- Cleanup when player leaves
function TycoonCore:Cleanup()
	self.IsActive = false
	self:SaveData()
	
	print("[TycoonCore] Cleaned up tycoon for", self.Player.Name)
end

return TycoonCore
