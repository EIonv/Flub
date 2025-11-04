-- FruitForager.luau
local FruitForagerReq =loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/FruitForager.luau")
)()
local fruitForagerInstance = FruitForagerReq.new(nil, { fast = true, teleportToSell = _G.teleportToSell, teleportOffset = Vector3.new(6, 0.75, 0) })

print("Starting FruitForager...")
fruitForagerInstance:start()
print("FruitForager started.")