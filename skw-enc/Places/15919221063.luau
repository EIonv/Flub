local ImpossibleObbyReq = loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/ImpossibleObbyToHeaven.luau")
)()

local teleporter = ImpossibleObbyReq.new({ createGui = false }) -- let hub manage GUI

teleporter:StartTeleport()