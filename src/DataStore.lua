--[[
	DataStore.lua
	Player data persistence using Roblox DataStoreService
	Handles saving/loading player progress with error handling and retry logic
	Author: OpenClaw AI
	Date: 2025
]]

local DataStore = {}

-- Services
local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")

-- Configuration
local DATA_STORE_NAME = "LobsterTycoonData_v1" -- Change version to reset all data
local AUTO_SAVE_INTERVAL = 300 -- Auto-save every 5 minutes
local MAX_RETRIES = 3
local RETRY_DELAY = 1

-- Get DataStore
local PlayerDataStore = DataStoreService:GetDataStore(DATA_STORE_NAME)

-- Cache to avoid multiple loads
local DataCache = {}

-- Default player data structure
local DEFAULT_DATA = {
	Cash = 100,
	Upgrades = {},
	TotalLobstersSpawned = 0,
	LastPlayed = os.time(),
	PlaytimeSeconds = 0
}

-- Create a deep copy of table
local function DeepCopy(original)
	local copy = {}
	for key, value in pairs(original) do
		if type(value) == "table" then
			copy[key] = DeepCopy(value)
		else
			copy[key] = value
		end
	end
	return copy
end

-- Merge saved data with default structure (adds new fields from updates)
local function MergeWithDefaults(savedData)
	local merged = DeepCopy(DEFAULT_DATA)
	
	if savedData then
		for key, value in pairs(savedData) do
			if type(value) == "table" and type(merged[key]) == "table" then
				-- Merge tables
				for k, v in pairs(value) do
					merged[key][k] = v
				end
			else
				merged[key] = value
			end
		end
	end
	
	return merged
end

-- Load player data with retry logic
function DataStore:LoadPlayerData(player)
	local userId = player.UserId
	local key = "Player_" .. userId
	
	-- Check cache first
	if DataCache[userId] then
		print("[DataStore] Loaded from cache for", player.Name)
		return DataCache[userId]
	end
	
	-- Try loading from DataStore
	for attempt = 1, MAX_RETRIES do
		local success, result = pcall(function()
			return PlayerDataStore:GetAsync(key)
		end)
		
		if success then
			local data = MergeWithDefaults(result)
			DataCache[userId] = data
			
			print(string.format("[DataStore] Loaded data for %s (Cash: $%d, Attempt: %d)", 
				player.Name, data.Cash, attempt))
			
			return data
		else
			warn(string.format("[DataStore] Failed to load data for %s (Attempt %d/%d): %s",
				player.Name, attempt, MAX_RETRIES, tostring(result)))
			
			if attempt < MAX_RETRIES then
				task.wait(RETRY_DELAY * attempt)
			end
		end
	end
	
	-- Return default data if all retries failed
	warn("[DataStore] All load attempts failed for", player.Name, "- using defaults")
	local defaultData = DeepCopy(DEFAULT_DATA)
	DataCache[userId] = defaultData
	return defaultData
end

-- Save player data with retry logic
function DataStore:SavePlayerData(player, data)
	local userId = player.UserId
	local key = "Player_" .. userId
	
	if not data then
		warn("[DataStore] No data to save for", player.Name)
		return false
	end
	
	-- Update cache
	DataCache[userId] = data
	
	-- Update timestamp
	data.LastPlayed = os.time()
	
	-- Try saving to DataStore
	for attempt = 1, MAX_RETRIES do
		local success, errorMessage = pcall(function()
			PlayerDataStore:SetAsync(key, data)
		end)
		
		if success then
			print(string.format("[DataStore] Saved data for %s (Cash: $%d, Attempt: %d)",
				player.Name, data.Cash, attempt))
			return true
		else
			warn(string.format("[DataStore] Failed to save data for %s (Attempt %d/%d): %s",
				player.Name, attempt, MAX_RETRIES, tostring(errorMessage)))
			
			if attempt < MAX_RETRIES then
				task.wait(RETRY_DELAY * attempt)
			end
		end
	end
	
	warn("[DataStore] All save attempts failed for", player.Name)
	return false
end

-- Update specific field in player data
function DataStore:UpdatePlayerField(player, fieldName, value)
	local userId = player.UserId
	
	if DataCache[userId] then
		DataCache[userId][fieldName] = value
		return true
	else
		warn("[DataStore] No cached data for", player.Name)
		return false
	end
end

-- Get specific field from cached data
function DataStore:GetPlayerField(player, fieldName)
	local userId = player.UserId
	
	if DataCache[userId] then
		return DataCache[userId][fieldName]
	else
		warn("[DataStore] No cached data for", player.Name)
		return nil
	end
end

-- Remove player from cache (call on player leave)
function DataStore:ClearCache(player)
	local userId = player.UserId
	DataCache[userId] = nil
	print("[DataStore] Cleared cache for", player.Name)
end

-- Auto-save system
function DataStore:StartAutoSave()
	task.spawn(function()
		while true do
			task.wait(AUTO_SAVE_INTERVAL)
			
			print("[DataStore] Auto-save triggered")
			
			for _, player in ipairs(Players:GetPlayers()) do
				local userId = player.UserId
				if DataCache[userId] then
					self:SavePlayerData(player, DataCache[userId])
				end
			end
		end
	end)
end

-- Wipe player data (admin/testing function)
function DataStore:WipePlayerData(player)
	local userId = player.UserId
	local key = "Player_" .. userId
	
	local success, errorMessage = pcall(function()
		PlayerDataStore:RemoveAsync(key)
	end)
	
	if success then
		DataCache[userId] = DeepCopy(DEFAULT_DATA)
		print("[DataStore] Wiped data for", player.Name)
		return true
	else
		warn("[DataStore] Failed to wipe data for", player.Name, ":", errorMessage)
		return false
	end
end

-- Get leaderboard data (top players by cash)
function DataStore:GetLeaderboard(limit)
	limit = limit or 10
	
	local leaderboardData = {}
	
	-- Note: For a real leaderboard, use OrderedDataStore
	-- This is a simplified version
	warn("[DataStore] Leaderboard requires OrderedDataStore implementation")
	
	return leaderboardData
end

-- Backup data to separate DataStore (safety measure)
function DataStore:BackupPlayerData(player, data)
	local BackupStore = DataStoreService:GetDataStore(DATA_STORE_NAME .. "_Backup")
	local userId = player.UserId
	local key = "Player_" .. userId .. "_" .. os.time()
	
	pcall(function()
		BackupStore:SetAsync(key, data)
	end)
end

-- Handle player joining
function DataStore:OnPlayerJoin(player)
	print("[DataStore] Player joined:", player.Name)
	
	-- Load data happens in TycoonCore when tycoon is assigned
	-- This just prepares the system
end

-- Handle player leaving
function DataStore:OnPlayerLeave(player)
	print("[DataStore] Player leaving:", player.Name)
	
	local userId = player.UserId
	if DataCache[userId] then
		-- Save data one last time
		self:SavePlayerData(player, DataCache[userId])
		
		-- Optional: Create backup
		self:BackupPlayerData(player, DataCache[userId])
		
		-- Clear cache
		self:ClearCache(player)
	end
end

-- Initialize DataStore system
function DataStore:Initialize()
	print("[DataStore] Initializing DataStore system...")
	
	-- Connect player events
	Players.PlayerAdded:Connect(function(player)
		self:OnPlayerJoin(player)
	end)
	
	Players.PlayerRemoving:Connect(function(player)
		self:OnPlayerLeave(player)
	end)
	
	-- Start auto-save
	self:StartAutoSave()
	
	-- Handle server shutdown
	game:BindToClose(function()
		print("[DataStore] Server shutting down - saving all data...")
		
		for _, player in ipairs(Players:GetPlayers()) do
			local userId = player.UserId
			if DataCache[userId] then
				self:SavePlayerData(player, DataCache[userId])
			end
		end
		
		-- Wait for all saves to complete
		task.wait(3)
	end)
	
	print("[DataStore] DataStore system initialized!")
end

return DataStore
