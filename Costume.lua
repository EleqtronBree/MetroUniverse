--[[
Author(s): Electra Bree
Created in 2018

This module script puts on a selected costume to a given player in-game
]]--

local _M = {}

--// Sets player's avatar to the Bloxxer Robloxian
function _M.BloxxerCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Shirt') then 
		Player.Character:FindFirstChild('Shirt'):Destroy()
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	game.ServerStorage['Hat']:FindFirstChild('Bloxxer Helmet'):Clone().Parent = Player.Character
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://1028594'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxassetid://7919084'
	Player.Character['Head'].BrickColor = BrickColor.new('Institutional white')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Institutional white')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Institutional white')
	Player.Character['Torso'].BrickColor = BrickColor.new('Medium stone grey')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Medium blue')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Medium blue')
end

--// Sets player's avatar to a cat
function _M.CatCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://0'
	game.ServerStorage['Hat']:FindFirstChild('Cat Ears'):Clone().Parent = Player.Character
	Player.Character['Shirt'].ShirtTemplate = 'rbxassetid://406230541'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Medium stone grey')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Medium stone grey')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Medium stone grey')
	Player.Character['Torso'].BrickColor = BrickColor.new('Cool yellow')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Medium stone grey')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Medium stone grey')
end

--// Sets player's avatar to a chicken
function _M.ChickenCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Shirt') then 
		Player.Character:FindFirstChild('Shirt'):Destroy()
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://0'
	game.ServerStorage['Hat']:FindFirstChild('Chicken Hat'):Clone().Parent = Player.Character
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Torso'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Bright yellow')
end

--// Sets player's avatar to the Noob Robloxian
function _M.NoobCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Shirt') then 
		Player.Character:FindFirstChild('Shirt'):Destroy()
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://452523122'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Torso'].BrickColor = BrickColor.new('Bright blue')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Br. yellowish green')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Br. yellowish green')
end

--// Sets player's avatar to the Guest Robloxian
function _M.GuestCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://0'
	game.ServerStorage['Hat']:FindFirstChild('Guest Cap'):Clone().Parent = Player.Character
	Player.Character['Shirt'].ShirtTemplate = 'rbxassetid://1998641267'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Institutional white')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Black')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Black')
end

--// Sets player's avatar to a cop
function _M.PoliceCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Shirt') then 
		Player.Character:FindFirstChild('Shirt'):Destroy()
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	game.ServerStorage['Hat']:FindFirstChild('Police Hat'):Clone().Parent = Player.Character
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://1807139174'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Bright yellow')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Bright blue')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Bright blue')
	Player.Character['Torso'].BrickColor = BrickColor.new('Bright blue')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Black')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Black')
end

--// Sets player's avatar to a zombie
function _M.ZombieCostume(Player)	
	for _,Hat in pairs (Player.Character:GetChildren()) do
		if Hat:IsA('Accessory') then
			Hat:Destroy()
		end	
	end
	if Player.Character:FindFirstChild('Shirt') then 
		Player.Character:FindFirstChild('Shirt'):Destroy()
	end
	if Player.Character:FindFirstChild('Pants') then 
		Player.Character:FindFirstChild('Pants'):Destroy()
	end
	Player.Character['Torso']:FindFirstChild('roblox').Texture = 'rbxassetid://0'
	Player.Character['Head']:FindFirstChild('face').Texture = 'rbxasset://textures/face.png'
	Player.Character['Head'].BrickColor = BrickColor.new('Medium green')
	Player.Character['Left Arm'].BrickColor = BrickColor.new('Medium green')
	Player.Character['Right Arm'].BrickColor = BrickColor.new('Medium green')
	Player.Character['Torso'].BrickColor = BrickColor.new('Dirt brown')
	Player.Character['Left Leg'].BrickColor = BrickColor.new('Dirt brown')
	Player.Character['Right Leg'].BrickColor = BrickColor.new('Dirt brown')
end

return _M