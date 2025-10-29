local UntitledTycoonReq = loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/UntitledTycoon.luau")
)()
local UntitledTycoonInstance = UntitledTycoonReq.new(0)

_G.AutoCollect = true

print("Starting Untitled Tycoon Script")
UntitledTycoonInstance:run()