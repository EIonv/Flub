local FruitForagerReq =loadstring(
	game:HttpGet("https://github.com/EIonv/Flub/raw/refs/heads/main/skw-enc/Trainers/FruitForager.luau")
)()
local fruitForagerInstance = FruitForagerReq.new()
print("Starting FruitForager...")
fruitForagerInstance:start()
print("FruitForager started.")