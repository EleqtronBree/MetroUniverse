--[[
Author(s): Electra Bree
Created in 2018

This script loads assets when a player joins the game
]]--

game.Players.PlayerAdded:connect(function(Player)
	local Testers = {
		'Cytronix',
		'Jocelynxqchen',
		'Jellybellyfelly8',
		'Kylechu60',
		'Chrisxclusive',
		'Susanphan'
	}
	
	local Folder = Instance.new('Folder', game.ServerStorage:WaitForChild('Player'))
	Folder.Name = Player.Name
	
	for _,Players in pairs (Testers) do
		if Player.Name ~= Players then
			Player:Kick('The game is not open to public. Contact Cytronix to become a tester')
		else
			local Tag = Instance.new('BoolValue',game.ServerStorage.Player:FindFirstChild(Player.Name))
			Tag.Name = 'Tester'
		end
	end
	
	--// Triggered when a player joins or respawns
	Player.CharacterAdded:connect(function(Character)
		repeat wait() until Character:FindFirstChild('Shirt')
		local Folder = game.ServerStorage['Player'][Player.Name]
		--
		if Folder:FindFirstChild('Bloxxer Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.BloxxerCostume(Player)
		elseif Folder:FindFirstChild('Cat Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.CatCostume(Player)
		elseif Folder:FindFirstChild('Chicken Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.ChickenCostume(Player)
		elseif Folder:FindFirstChild('Noob Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.NoobCostume(Player)
		elseif Folder:FindFirstChild('Guest Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.GuestCostume(Player)
		elseif Folder:FindFirstChild('Police Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.PoliceCostume(Player)
		elseif Folder:FindFirstChild('Zombie Costume') then
			local Module = require(game.ServerScriptService.Module['Costume'])
			Module.ZombieCostume(Player)
		end
		--
	end)
end)

--// Triggered when a player joins 
game.Players.PlayerRemoving:connect(function(Player)
	game.ServerStorage.Player:FindFirstChiild(Player.Name):Destroy()
end)