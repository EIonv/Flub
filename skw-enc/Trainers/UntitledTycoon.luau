local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Event = ReplicatedStorage.RemoteEvents.MineRock
local LocalPlayer = Players.LocalPlayer

-- Improved RockMiner Class with AUTO-INIT
local skw = {}
skw.__index = skw
_G.AutoCollect = true

function skw.new(initialValue): table
	local self = setmetatable({
		value = initialValue or 0,
		plot = nil,
		foundRocks = {},
		currentRockIndex = 1,
		character = nil,
		characterAddedConnection = nil,
		hrp = nil,
		_isInitialized = false,
		emojis = {
			rock = "🪨",
			pickaxe = "⛏️",
			success = "✅",
			failure = "❌",
			plot = "🏞️",
		},
	}, skw)

	-- if value is not a number error out
	if typeof(self.value) ~= "number" then
		error("Initial value must be a number")
	end

	self:_initPlayer()
	return self
end

-- AUTO-INITIALIZE Character & HRP
function skw:_initPlayer(): nil
	if self._isInitialized then
		return
	end

	-- Wait for character (handles respawn automatically)
	self.character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	self.hrp = self.character:WaitForChild("HumanoidRootPart")

	-- Auto-connect to character respawn and set the characterAddedConnection
	self.characterAddedConnection = LocalPlayer.CharacterAdded:Connect(function(newCharacter)
		self.character = newCharacter
		self.hrp = newCharacter:WaitForChild("HumanoidRootPart")
		self:log("Character respawned - Reinitialized!")
	end)

	-- in the workspace find the Players Plot in the Plots folder
	for _, obj in workspace:GetChildren() do
		if obj.Name == "Plots" then
			for _, plot in obj:GetChildren() do
				if plot.Name == LocalPlayer.Name .. "'s Plot" then
					self.plot = plot

					if self.plot ~= nil then
						self:log(self.emojis.success .. " Found Player's Plot: " .. tostring(self.plot.Name))
					else
						self:log(self.emojis.failure .. " Player's Plot not found!")
					end

					for _, plotObj in plot:GetChildren() do
						self:log(self.emojis.plot .. " Plot Object: " .. tostring(plotObj.Name))
					end
					break
				end
			end
		end
	end

	self._isInitialized = true
	self:log("Player initialized successfully!")
	self:log("Character: " .. tostring(self.character))
	self:log("HRP: " .. tostring(self.hrp))
end

-- Logs the current value with optional message
function skw:log(message): nil
	-- if message is nil then return a warn
	if not message then
		skw:warn("Log message is nil")
		return
	end

	-- Use tostring concatenation to avoid obfuscator issues with string.format
	local logMessage
	if message and message ~= "" then
		logMessage = "Value: " .. tostring(self.value) .. " - " .. tostring(message)
	else
		logMessage = "Value: " .. tostring(self.value)
	end
	print(logMessage)
end

-- Warns with the current value and optional message
function skw:warn(message): nil
	if not message then
		warn("Warn message is nil")
		return
	end
	-- Use tostring concatenation to avoid obfuscator issues with string.format
	local warnMessage
	if message and message ~= "" then
		warnMessage = "Value: " .. tostring(self.value) .. " - " .. tostring(message)
	else
		warnMessage = "Value: " .. tostring(self.value)
	end
	warn(warnMessage)
end

-- method to get the player's plot
function skw:getPlot(): Instance?
	return self.plot
end

-- method to get all objects in the player's plot
function skw:getPlotObjects()
	if not self.plot then
		self:log("No plot found")
		return {}
	end

	local objects = {}
	for _, obj in ipairs(self.plot.Objects:GetChildren()) do
		self:log("Plot Object: " .. obj.Name)
		table.insert(objects, obj)
	end
	return objects
end

-- method to get all printers in the player's plot objects
function skw:getPrintersInObjects()
	local printers = {}
	local plotObjects = self:getPlotObjects()
	for _, obj in ipairs(plotObjects) do
		if string.find(string.lower(obj.Name), "printer") then
			table.insert(printers, obj)
		end
	end
	return printers
end

-- method to call the RemoteFunctions/UpgradePrinter and pass the printer instance
function skw:upgradePrinter(printer): boolean
	if not printer or not printer.Parent then
		skw:warn("Invalid printer provided")
		return false
	end

	-- Ensure player is still initialized
	self:_initPlayer()

	local upgradeFunction: RemoteFunction = ReplicatedStorage.RemoteFunctions.UpgradePrinter
	upgradeFunction:InvokeServer(printer)
	self:log("Upgraded printer: " .. printer.Name)
	return true
end

-- method to call the RemoteFunctions/TakeMoney and pass the printer instance
function skw:takePrinterMoney(printer): boolean
	if not printer or not printer.Parent then
		skw:warn("Invalid printer provided")
		return false
	end

	-- Ensure player is still initialized
	self:_initPlayer()

	local TakeMoney: RemoteFunction = ReplicatedStorage.RemoteFunctions.TakeMoney
	TakeMoney:InvokeServer(printer)
	self:log("Took printer money: " .. printer.Name)
	return true
end

-- method to check if the player has a pickaxe equipped
function skw:hasPickaxeEquipped(): boolean
	local character = LocalPlayer.Character
	if not character then
		self:log(self.emojis.failure .. " No character found")
		return false
	end

	local equippedTool = character:FindFirstChildOfClass("Tool")
	if equippedTool and string.find(string.lower(equippedTool.Name), "pickaxe") then
		self:log(self.emojis.success .. " Pickaxe is equipped: " .. equippedTool.Name)
		return true
	end

	return false
end

-- method to find and Equip a pickaxe from the player's backpack
function skw:equipPickaxe(): boolean
	local backpack = LocalPlayer:WaitForChild("Backpack")
	for _, item in ipairs(backpack:GetChildren()) do
		if string.find(string.lower(item.Name), "pickaxe") then
			LocalPlayer.Character.Humanoid:EquipTool(item)
			self:log(self.emojis.pickaxe .. " Equipped pickaxe: " .. item.Name)
			return true
		end
	end

	self:log(self.emojis.failure .. " No pickaxe found in backpack")

	-- check if they have one equipped already
	if self:hasPickaxeEquipped() then
		self:log(self.emojis.success .. " Pickaxe is already equipped")
		return true
	end

	return false
end

-- Fires the mining event safely
function skw:fireMineRock(rock): boolean
	if not rock or not rock.Parent then
		skw:warn("Invalid rock provided")
		return false
	end

	-- Ensure player is still initialized
	self:_initPlayer()

	Event:FireServer(rock)
	return true
end

-- Finds all rocks in workspace efficiently
function skw:findRocks(): number
	self:_initPlayer() -- Ensure ready

	self.foundRocks = {}
	local rockCount = 0

	for _, obj in workspace:GetChildren() do
		if string.find(string.lower(obj.Name), "rock") then
			if #obj:GetChildren() == 0 then
				continue
			end
			table.insert(self.foundRocks, obj)
			rockCount = rockCount + 1
		end
	end

	self:log(self.emojis.success .. " Found " .. rockCount .. " rocks")
	return rockCount
end

-- Mines all found rocks with movement
-- increment the currentIndex after each rock mined
function skw:mineAllRocks(): boolean
	local rockCount = self:findRocks()
	-- writefile("skw/test.txt","true")
	if rockCount == 0 then
		self:log("No rocks found")
		return false
	end

	-- if pickaxe is not equipped then equip it else continue
	if not self:hasPickaxeEquipped() then
		if not self:equipPickaxe() then
			return false
		else
			self:log(self.emojis.success .. " Pickaxe equipped, starting mining...")
		end
	end

	for i, rock in ipairs(self.foundRocks) do
		-- Smooth movement to rock
		local targetCFrame = rock.CFrame + Vector3.new(0, 7, 0)
		self.hrp.CFrame = targetCFrame
		task.wait(0.5) -- Wait for movement to complete
		-- Update current index
		self.currentRockIndex = i
		-- Fire mining event
		if not self:fireMineRock(rock) then
			continue
		end

		self:log("Mining " .. tostring(rock.Name) .. " (" .. tostring(i) .. "/" .. tostring(rockCount) .. ")")

		task.wait(1)
	end

	self:log("Mining completed")
	return true
end

-- Process single rock
function skw:mineRock(rock): boolean
	if not rock then
		return false
	end

	self:fireMineRock(rock)
	self:log("Mined: " .. tostring(rock.Name))
	self.hrp.CFrame = rock.CFrame + Vector3.new(0, 3, 0)
	task.wait(1)
	return true
end

-- Get current progress
function skw:getProgress(): table
	return {
		current = self.currentIndex - 1,
		total = #self.foundRocks,
	}
end

-- Reset miner state
function skw:reset(): nil
	self.foundRocks = {}
	self.currentRockIndex = 1
end

-- Method to destroy the current script instance
function skw:destroy(): nil
	self:log("Destroying RockMiner instance")
	self:reset()
	self.character = nil
	self.hrp = nil
	self.plot = nil
	self._isInitialized = false
	self.foundRocks = nil
	self.emojis = nil

	-- unconnect from the respawn event
	if self.characterAddedConnection then
		self:log("Disconnecting character added connection")
		self.characterAddedConnection:Disconnect()
		self.characterAddedConnection = nil
	end

	-- destroy the script at the end
	local scriptInstance = script
	if scriptInstance then
		if typeof(scriptInstance) == "table" then
			-- clear the metatable to avoid issues
			setmetatable(scriptInstance, nil)
			-- print the table to confirm
			for k, _ in pairs(scriptInstance) do
				self:log("Clearing key: " .. tostring(k))
				scriptInstance[k] = nil
			end
		else
			skw:warn("Script instance is not a table, cannot destroy")
		end
	end

	self:log("RockMiner instance destroyed")
	self.value = nil
end

-- Main execution function
function skw:run(): boolean
	-- Mine all rocks
	-- local success = self:mineAllRocks()
	-- if not success then
	-- 	return false
	-- end

	task.spawn(function()
		while _G.AutoCollect do
			for _, printer in ipairs(self:getPrintersInObjects()) do
				-- self:upgradePrinter(printer)
				self:takePrinterMoney(printer)
				task.wait(0.5)
			end
			task.wait(5)
		end
	end)
end

return skw

-- -- 🔥 SUPER SIMPLE USAGE - NO MORE MANUAL SETUP!
-- local function main()
-- 	local core: table = skw.new(0)
-- 	local IntLoop = 1

-- 	for _ = 1, IntLoop do
-- 		core:run()
-- 		-- on last one do this loadstring(game:HttpGet("https://shell.vlone.workers.dev/repo/skw.luau"))()
-- 		-- if i == IntLoop then
-- 		-- 	loadstring(game:HttpGet("https://shell.vlone.workers.dev/repo/sellOre.luau"))()
-- 		-- end
-- 	end
-- 	core:destroy()
-- end

-- -- Start the main function
-- local success, err = pcall(main)
-- if not success then
-- 	skw:warn("Error in RockMiner script: " .. tostring(err))
-- end
