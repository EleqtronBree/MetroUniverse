--[[
Author(s): Electra Bree
Created in 2018

This script maanges virtual currency transactions made in-game
This script no longer works due to Roblox Updates. Should be used as reference only
]]--

local DataStore = game:GetService("DataStoreService"):GetDataStore("PurchaseHistory")

--// Developer Product transactions
game:GetService("MarketplaceService").ProcessReceipt = function(ReceiptInfo) 
	for i, Player in ipairs(game.Players:GetChildren()) do
		if Player.UserId == ReceiptInfo.PlayerId then
			if ReceiptInfo.ProductId == 295648908 then --Choose Gear
				game:GetService('ReplicatedStorage'):WaitForChild('PurchaseGearProduct'):FireClient(Player)
			elseif ReceiptInfo.ProductId == 303678011 then --Rent Class
				local Tag = Instance.new('BoolValue',game.ServerStorage['Player']:FindFirstChild(Player.Name))
				Tag.Name = 'Business Pass'
			elseif ReceiptInfo.ProductId == 304732384 then --Choose Costume
				game:GetService('ReplicatedStorage'):WaitForChild('PurchaseCostumeProduct'):FireClient(Player)
			elseif ReceiptInfo.ProductId == 299468440 then -- Hoverboard
				game.ServerStorage['Gear']:FindFirstChild('Hoverboard'):Clone().Parent = Player.Backpack
				game.ServerStorage['Gear']:FindFirstChild('Hoverboard'):Clone().Parent = Player.StarterGear
			elseif ReceiptInfo.ProductId == 311796277 then -- Boombox
				game.ServerStorage['Gear']:FindFirstChild('Boombox'):Clone().Parent = Player.Backpack
				game.ServerStorage['Gear']:FindFirstChild('Boombox'):Clone().Parent = Player.StarterGear				
			end
		end
	end

	local PlayerProductKey = "p_" .. ReceiptInfo.PlayerId .. "_p_" .. ReceiptInfo.PurchaseId
	DataStore:IncrementAsync(PlayerProductKey, 1)	
	return Enum.ProductPurchaseDecision.PurchaseGranted		
end

--// Gamepass transactions
game:GetService("MarketplaceService").PromptGamePassPurchaseFinished:connect(function(Player, ID)
	if ID == 4733275 then -- Fusion Coil
		game.ServerStorage['Gear']:FindFirstChild('Fusion Coil'):Clone().Parent = Player.Backpack
		game.ServerStorage['Gear']:FindFirstChild('Fusion Coil'):Clone().Parent = Player.StarterGear
	elseif ID == 4733279 then -- Jetpack
		game.ServerStorage['Gear']:FindFirstChild('Jetpack'):Clone().Parent = Player.Backpack
		game.ServerStorage['Gear']:FindFirstChild('Jetpack'):Clone().Parent = Player.StarterGear
	elseif ID == 4733281 then -- Grapple Hook
		game.ServerStorage['Gear']:FindFirstChild('Grapple Hook'):Clone().Parent = Player.Backpack
		game.ServerStorage['Gear']:FindFirstChild('Grapple Hook'):Clone().Parent = Player.StarterGear	
	elseif ID == 4708645 then -- Segway
		game.ServerStorage['Gear']:FindFirstChild('Segway'):Clone().Parent = Player.Backpack
		game.ServerStorage['Gear']:FindFirstChild('Segway'):Clone().Parent = Player.StarterGear			
	end	
end)