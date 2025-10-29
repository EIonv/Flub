-- FishIt.luau
-- chatService
local TextChatService = game:GetService("TextChatService")
local systemChannel: TextChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXSystem")

local FishIt = loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/FishIt.luau")
)()

local Default = FishIt.new({ LocalPlayer = game:GetService("Players").LocalPlayer })
Default.toggleKey = Enum.KeyCode.F
Default.loopDelay = { postInvoke = 4, between = 1 }
Default:Start()
-- then send in the chat systemChannel:DisplaySystemMessage("FishIt started! Press F to toggle.", "Info")
systemChannel:DisplaySystemMessage("FishIt started! Press F to toggle.", "Info")