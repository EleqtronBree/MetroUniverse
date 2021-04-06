--[[
Author(s): Electra Bree
Created in 2018

This  script executes server-sided functions when triggered by the client scripts
]]--

--// The following creates Remove event objects
local Gear = Instance.new('RemoteEvent',game.ReplicatedStorage)
Gear.Name = 'Gear'
local RandomGear = Instance.new('RemoteEvent',game.ReplicatedStorage)
RandomGear.Name = 'RandomGear'
local PurchaseGearProduct = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseGearProduct.Name = 'PurchaseGearProduct'
local Gameboy = Instance.new('RemoteEvent',game.ReplicatedStorage)
Gameboy.Name = 'Gameboy'
local PurchaseClassProduct = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseClassProduct.Name = 'PurchaseClassProduct'
local PurchaseClassPass = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseClassPass.Name = 'PurchaseClassPass'
local PurchaseCostumeProduct = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseCostumeProduct.Name = 'PurchaseCostumeProduct'

local BloxxerCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
BloxxerCostume.Name = 'BloxxerCostume'
local CatCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
CatCostume.Name = 'CatCostume'
local ChickenCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
ChickenCostume.Name = 'ChickenCostume'
local NoobCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
NoobCostume.Name = 'NoobCostume'
local GuestCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
GuestCostume.Name = 'GuestCostume'
local PoliceCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
PoliceCostume.Name = 'PoliceCostume'
local ZombieCostume = Instance.new('RemoteEvent',game.ReplicatedStorage)
ZombieCostume.Name = 'ZombieCostume'

local Coil = Instance.new('RemoteEvent',game.ReplicatedStorage)
Coil.Name = 'Coil'
local PurchaseFusionCoilPass = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseFusionCoilPass.Name = 'PurchaseFusionCoilPass'
local PurchaseJetpackPass = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseJetpackPass.Name = 'PurchaseJetpackPass'
local PurchaseGrapplePass = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseGrapplePass.Name = 'PurchaseGrapplePass'
local PurchaseHoverboardProduct = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseHoverboardProduct.Name = 'PurchaseHoverboardProduct'
local PurchaseSegwayPass = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseSegwayPass.Name = 'PurchaseSegwayPass'
local ChangeChannel = Instance.new('RemoteEvent',game.ReplicatedStorage)
ChangeChannel.Name = 'ChangeChannel' -- called in button
local PurchaseBoomboxProduct = Instance.new('RemoteEvent',game.ReplicatedStorage)
PurchaseBoomboxProduct.Name = 'ChangeChannel' -- called in button
local SubspaceDisguiseGui = Instance.new('RemoteEvent',game.ReplicatedStorage)
SubspaceDisguiseGui.Name = 'SubspaceDisguiseGui'
local SubspaceDisguiseMorph = Instance.new('RemoteEvent',game.ReplicatedStorage)
SubspaceDisguiseMorph.Name = 'SubspaceDisguiseMorph'

--// The following events are triggered by client scripts
Gear.OnServerEvent:connect(function(Player,Button)	
	game.ServerStorage.Gear[Button]:Clone().Parent = workspace
end)

RandomGear.OnServerEvent:connect(function()
	local Tools = {}
	for _,Tool in pairs (game.ServerStorage.Gear:GetChildren()) do
		table.insert(Tools, Tool.Name)
	end
	local ChosenGear = Tools[math.random(1,#Tools)]
	game.ServerStorage.Gear[ChosenGear]:Clone().Parent = workspace
end)

PurchaseGearProduct.OnServerEvent:connect(function(Player)
	game:GetService("MarketplaceService"):PromptProductPurchase(Player,295648908)
end)

Gameboy.OnServerEvent:connect(function(Player,Button)
	game.ServerStorage.Gear[Button]:Clone().Parent = Player.Backpack
end)

PurchaseClassProduct.OnServerEvent:connect(function(Player)
	game:GetService("MarketplaceService"):PromptProductPurchase(Player,303678011)
end)

PurchaseClassPass.OnServerEvent:connect(function(Player)
	game:GetService("MarketplaceService"):PromptGamePassPurchase(Player,4718410)
end)

PurchaseCostumeProduct.OnServerEvent:connect(function(Player)
	game:GetService("MarketplaceService"):PromptProductPurchase(Player,304732384)
end)

BloxxerCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then 
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Bloxxer Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Bloxxer Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.BloxxerCostume(Player)
end)

CatCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Cat Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Cat Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.CatCostume(Player)
end)

ChickenCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then 
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Chicken Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Chicken Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.ChickenCostume(Player)
end)

NoobCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Noob Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Noob Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.NoobCostume(Player)
end)

GuestCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Guest Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Guest Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.GuestCostume(Player)
end)

PoliceCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Police Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Police Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.PoliceCostume(Player)
end)

ZombieCostume.OnServerEvent:connect(function(Player)
	for _,Tag in pairs (game.ServerStorage['Player']:FindFirstChild(Player.Name):GetChildren()) do
		if string.match(Tag.Name,"Costume") then
			Tag:Destroy()
		end
	end
	if not game.ServerStorage['Player'][Player.Name]:FindFirstChild('Zombie Costume') then
		local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
		Tag.Name = 'Zombie Costume'
	end
	local Module = require(game.ServerScriptService.Module['Costume'])
	Module.ZombieCostume(Player)
end)
--

Coil.OnServerEvent:connect(function(Player,Gear)	
	game.ServerStorage.Gear[Gear]:Clone().Parent = Player.Backpack
	game.ServerStorage.Gear[Gear]:Clone().Parent = Player.StarterGear
end)

PurchaseFusionCoilPass.OnServerEvent:connect(function(Player)	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(Player,4733275)
end)

PurchaseJetpackPass.OnServerEvent:connect(function(Player)	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(Player,4733279)
end)

PurchaseHoverboardProduct.OnServerEvent:connect(function(Player)	
	game:GetService("MarketplaceService"):PromptProductPurchase(Player,299468440)
end)

PurchaseSegwayPass.OnServerEvent:connect(function(Player)	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(Player,4708645)
end)

PurchaseBoomboxProduct.OnServerEvent:connect(function(Player)
	game:GetService("MarketplaceService"):PromptProductPurchase(Player,311796277)
end)

SubspaceDisguiseGui.OnServerEvent:connect(function(Player)
	local PlayerGui = Player:FindFirstChild("PlayerGui")
    if PlayerGui and PlayerGui:FindFirstChild("LanternGui") == nil then
		game.ReplicatedStorage:FindFirstChild('SubspaceDisguise'):FireClient(PlayerGui)
	end
end)

SubspaceDisguiseMorph.OnServerEvent:connect(function(Player, Tool, Character, Target, Tar, Script)
	Script = Tool.MorphEffect:Clone()
	Script.Parent = Character
	Tar:Clone().Parent = Script
	Script.Target.Value = Target.Parent
	Script.Disabled = false
end)