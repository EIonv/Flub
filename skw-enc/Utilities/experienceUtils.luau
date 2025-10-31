-- get the place id and name and show notification
local placeId = game.PlaceId
local placeName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
local experienceUtils = {}

experienceUtils.__index = experienceUtils
-- track which place-specific scripts were successfully loaded
experienceUtils.loadedPlaces = {}
local placeScripts = {
	[135625754866483] = "https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Places/135625754866483.luau",
	[134006883039063] = "https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Places/134006883039063.luau",
	[121864768012064] = "https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Places/121864768012064.luau",
	[15919221063] = "https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Places/15919221063.luau",
}

function experienceUtils.getPlaceId()
	return placeId
end

function experienceUtils.getPlaceName()
	return placeName
end

-- method to check the place and load specific scripts and return the script that was loaded
function experienceUtils.checkAndLoadPlaceScripts()
	-- Load specific scripts based on placeId and return true when a script was loaded successfully.
	local scriptLoaded = false
	local scriptUrl = placeScripts[placeId]

	-- Debug info: show which placeId and scriptUrl we're attempting to loading
	_G.Logger:info("Checking for place-specific script for place ID:", tostring(placeId))

	-- If we're not in the known place that uses Fruits, clear that global entry cleanly.
	if placeId ~= 135625754866483 then
		if _G.Fruits then
			_G.Logger:info("Clearing _G.Fruits for place: " .. tostring(placeId))
			-- it's sufficient to nil the table reference; no need to iterate keys.
			_G.Fruits = nil
		end
	end

	if scriptUrl then
		-- Safely fetch the remote script and execute it. Use pcall to avoid runtime errors bubbling up.
		local okFetch, scriptSource = pcall(function()
			return game:HttpGet(scriptUrl)
		end)

		if not okFetch or not scriptSource or scriptSource == "" then
			_G.Logger:info("Failed to fetch place-specific script for place " .. tostring(placeId))
			return false
		end

		local func, loadErr = loadstring(scriptSource)
		if not func then
			_G.Logger:info("Failed to load script source for place " .. tostring(placeId) .. ": " .. tostring(loadErr))
			return false
		end

		local okRun, runErr = pcall(func)
		if okRun then
			scriptLoaded = true
			experienceUtils.loadedPlaces[placeId] = true
		else
			_G.Logger:info("Error running place-specific script for " .. tostring(placeId) .. ": " .. tostring(runErr))
			scriptLoaded = false
		end
	end

	if scriptLoaded then
		_G.Logger:info("Loaded place-specific script for place ID " .. tostring(placeId))
	else
		_G.Logger:info("No place-specific script loaded for place ID " .. tostring(placeId))
	end

	return scriptLoaded
end

_G.experienceUtils = experienceUtils
return _G.experienceUtils
