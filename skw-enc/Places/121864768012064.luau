-- FishIt.luau
-- chatService
local TextChatService = game:GetService("TextChatService")
local systemChannel: TextChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXSystem")

local FishIt = loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/FishIt.luau")
)()

local Default = FishIt
Default:Start()
-- then send in the chat systemChannel:DisplaySystemMessage("FishIt started! Press F to toggle.", "Info")
systemChannel:DisplaySystemMessage("FishIt started! Press F to toggle.", "Info")
print("FishIt started! Press F to toggle.")