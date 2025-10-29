local Obby725Stages = loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/Obby725Stages.luau")
)()

local teleporter = Obby725Stages.new({ createGui = false }) -- let hub manage GUI

teleporter:StartTeleport()