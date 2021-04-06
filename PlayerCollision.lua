--[[
Author(s): Electra Bree
Created in 2018

This script manages collision groups between players and objects in-game
]]--

--// Variables
local PlayerGroup = "Player Group"
local PastPlayerGroup = {}

game:GetService("PhysicsService"):CreateCollisionGroup(PlayerGroup)
game:GetService("PhysicsService"):CollisionGroupSetCollidable(PlayerGroup,PlayerGroup,false)

--// Sets gear with the player collision group
function SetPlayerCollisionGroup(Part)
	if Part:IsA("BasePart") then
		game:GetService("PhysicsService"):SetPartCollisionGroup(Part,PlayerGroup)
	end 
end

--// Sets the player collision group
function SetPlayerRecursive(Part)
	SetPlayerCollisionGroup(Part)
	if Part:IsA("BasePart") then
		game:GetService("PhysicsService"):SetPartCollisionGroup(Part, PlayerGroup) 
	end
	for _, Child in ipairs(Part:GetChildren()) do
		SetPlayerRecursive(Child)
	end 
end

--// Removes gear from the player collision group
function ResetPlayerCollisionGroup(Part)
	local PreviousCollisionGroupId = PastPlayerGroup[Part]
	if not PreviousCollisionGroupId then
		return 
	end	
	local PreviousCollisionGroupName = game:GetService("PhysicsService"):GetCollisionGroupName(PreviousCollisionGroupId)
	if not PreviousCollisionGroupName then 
		return 
	end
	game:GetService("PhysicsService"):SetPartCollisionGroup(Part, PreviousCollisionGroupName)
	PastPlayerGroup[Part] = nil 
end

--// Sets (or refreshes) player to a collision group when player respawns or joins the game
function CharacterAdded(Character)
	Character.DescendantAdded:Connect(SetPlayerCollisionGroup)
	Character.DescendantRemoving:Connect(ResetPlayerCollisionGroup)
	SetPlayerRecursive(Character) 
end 

--// Triggers character respawn event when player joins the game
function PlayerAdded(Player)
	Player.CharacterAdded:Connect(CharacterAdded) 
end

game.Players.PlayerAdded:Connect(PlayerAdded)